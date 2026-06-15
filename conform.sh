#!/bin/bash
# CTRL-AI Conformance Gate — governance applied to the repo itself.
# Runs in CI before every deploy. Locally: ./conform.sh
# Philosophy: "the largest failure is runtime governance persistence, not conceptual quality."
# Exit 0 = SHIP. Exit 1 = blocked, fix listed ✗ items.

set -u
FAIL=0
pass() { printf '  ✓ %s\n' "$1"; }
fail() { printf '  ✗ %s\n' "$1"; FAIL=1; }
warn() { printf '  ⚠ %s\n' "$1"; }

echo "CTRL-AI CONFORMANCE GATE"
echo "═══════════════════════"

# ── C1: VERSION single source ──
if [ -f VERSION ] && grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$' VERSION; then
  V=$(cat VERSION); pass "C1 VERSION file present: $V"
else
  fail "C1 VERSION file missing or not semver"; V="0.0.0"
fi

# ── C2: version consistency across canonical surfaces ──
echo "— C2 version consistency —"
chk_ver() {
  if grep -qF "$2" "$1" 2>/dev/null; then pass "C2 $1"; else fail "C2 $1 does not contain '$2'"; fi
}
chk_ver CTRL-AI.md      "version: $V"
chk_ver README.md        "Version: $V"
chk_ver llms-full.txt    "# CTRL-AI v$V"

# ── C3: CHANGELOG covers current version ──
if grep -q "## \[V$V\]" CHANGELOG.md 2>/dev/null || grep -q "## V$V" CHANGELOG.md 2>/dev/null; then
  pass "C3 CHANGELOG has V$V entry"
else
  fail "C3 CHANGELOG.md missing V$V entry"
fi

# ── C4: LICENSE exists ──
if [ -f LICENSE ]; then pass "C4 LICENSE present"
else fail "C4 LICENSE file missing"; fi

# ── C5: required directories exist ──
echo "— C5 directory structure —"
for dir in core agents modes runtime libraries adapters behavior research .github/workflows; do
  if [ -d "$dir" ]; then pass "C5 $dir/"; else fail "C5 missing directory: $dir/"; fi
done

# ── C6: required core files exist ──
echo "— C6 core files —"
for f in core/kernel.md core/passage.md core/security.md; do
  if [ -f "$f" ]; then pass "C6 $f"; else fail "C6 missing: $f"; fi
done

# ── C7: required agent files exist ──
echo "— C7 agent files —"
for f in agents/producer.md agents/ghostwriter.md agents/researcher.md agents/auditor.md agents/strategist.md; do
  if [ -f "$f" ]; then pass "C7 $f"; else fail "C7 missing: $f"; fi
done

# ── C8: component frontmatter check (R-Duck pattern) ──
echo "— C8 component frontmatter —"
FRONTMATTER_FILES=$(find core/ agents/ modes/ runtime/ libraries/ -name '*.md' 2>/dev/null)
FM_PASS=0; FM_FAIL=0
for f in $FRONTMATTER_FILES; do
  if head -5 "$f" | grep -q 'component-id:' 2>/dev/null; then
    FM_PASS=$((FM_PASS+1))
  else
    fail "C8 $f missing component frontmatter (component-id:)"
    FM_FAIL=$((FM_FAIL+1))
  fi
done
if [ "$FM_FAIL" -eq 0 ] && [ "$FM_PASS" -gt 0 ]; then
  pass "C8 all $FM_PASS files have component frontmatter"
fi

# ── C9: llms-full.txt freshness ──
echo "— C9 llms-full.txt freshness —"
if bash build.sh llms-only >/dev/null 2>&1; then
  if diff -q llms-full.txt llms-full.txt.tmp >/dev/null 2>&1; then
    pass "C9 llms-full.txt matches fresh regeneration"
    rm -f llms-full.txt.tmp
  else
    # build.sh writes to llms-full.txt directly, so check git diff instead
    if git diff --quiet -- llms-full.txt 2>/dev/null; then
      pass "C9 llms-full.txt is current"
    else
      warn "C9 llms-full.txt may be stale (run ./build.sh and commit)"
    fi
  fi
else
  warn "C9 build.sh failed — cannot verify llms-full.txt freshness"
fi

# ── C10: no dead references ──
echo "— C10 dead reference check —"
# Check for old monolith section references (S0, S1, etc.) in non-changelog files
SECTION_REFS=$(grep -rn 'SECTION [0-9]' --include='*.md' \
  --exclude=CHANGELOG.md --exclude=WIKI.md \
  core/ agents/ modes/ runtime/ libraries/ 2>/dev/null | \
  grep -v '^#' || true)
if [ -z "$SECTION_REFS" ]; then
  pass "C10 no stale monolith section references in protocol files"
else
  warn "C10 found old SECTION references (may need updating):"
  echo "$SECTION_REFS" | head -5 | sed 's/^/      /'
fi

# ── VERDICT ──
echo ""
echo "═══════════════════════"
if [ "$FAIL" -eq 0 ]; then
  echo "  SHIP ✓ — all checks passed"
  exit 0
else
  echo "  BLOCKED ✗ — fix items above"
  exit 1
fi
