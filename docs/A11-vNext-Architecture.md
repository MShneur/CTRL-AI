# A11 vNext — Execution Architecture Blueprint

**Source:** ChatGPT deep research session, 2026-03-25  
**Status:** Research blueprint — not yet implemented  
**Scope:** A11 sub-project only. This is NOT a change to the CTRL-AI governance constitution.  
**Evidence base:** AGoT (arXiv:2502.05078), LogicTree (EMNLP 2025), Table-as-Thought (ACL 2025), E²C (arXiv:2509.23946), RouteGoT (arXiv:2603.05818), ZebraLogic (2025), TreeQA (2025), FoT (arXiv:2602.16512)

---

## Core Strategic Shift

| From | To |
|------|----|
| Static 11-step linear reasoning pipeline | Adaptive, graph-executed, constraint-verified reasoning system |
| Fixed traversal order | Dynamic DAG with selective node activation |
| Conceptual schema | Executable runtime with formal state representation |
| Single-model execution | Cost-aware model-tier routing per node role |

**Key insight:** A11's 11 semantic roles are valid. The fixed linear traversal is not. Convert roles from mandatory steps into graph node types with adaptive activation.

---

## Architecture Layers

### Layer 1 — Semantic Role Ontology (A11 preserved)
The 11 A11 levels become **node roles**, not sequential steps:

| ID | Role | Phase |
|----|------|-------|
| 1 | INTENT | Intake |
| 2 | WISDOM / CONTEXT | Intake |
| 3 | KNOWLEDGE | Planning |
| 4 | COMPREHENSION | Planning |
| 5 | PROJECTIVE_FREEDOM (Exploration) | Planning |
| 6 | PROJECTIVE_CONSTRAINT (Constraints) | Planning |
| 7 | BALANCE | Planning |
| 8 | PRACTICAL_FREEDOM (Action Space) | Execution |
| 9 | PRACTICAL_CONSTRAINT (Execution Constraints) | Execution |
| 10 | FOUNDATION (Validation) | Execution |
| 11 | REALIZATION (Output) | Synthesis |

**Adaptive activation rule:**
- Trivial task → 3–5 active roles (INTENT, KNOWLEDGE, REALIZATION minimum)
- Moderate task → 6–8 active roles
- Hard/complex task → full graph with recursive expansion

### Layer 2 — Graph Execution Engine (DAG)
Replace linear flow with a Directed Acyclic Graph:
- Nodes = A11 semantic roles
- Edges = dependency relationships
- Each subproblem gets a node cluster
- Subgraphs run independently, then recompose

### Layer 3 — Decomposition Engine
- Input complexity assessment → direct solve or decompose
- `if complexity(node) < threshold: solve directly; else: decompose into children`
- Adaptive expansion beats fixed traversal (AGoT finding)

### Layer 4 — Constraint Engine
Three constraint classes applied before each node expansion:
1. **Logical:** contradiction, circularity, unsupported leap
2. **Policy/process:** required evidence, required review path, prohibited action
3. **Resource:** token budget, latency budget, branching budget

Practical rules:
- R1: No REALIZATION before at least one FOUNDATION node is validated
- R2: PROJECTIVE_FREEDOM may branch; PRACTICAL_CONSTRAINT may only prune
- R3: REALIZATION requires grounding_score >= threshold
- R4: branch_count per node <= max_branch(role, complexity)
- R5: Unresolved contradiction blocks graph completion

### Layer 5 — State Representation
Dual representation:
- **Graph store:** Dependency structure (nodes, edges, statuses)
- **Table view:** Human-readable inspection, debugging, audit

Node schema:
```json
{
  "id": "n_024",
  "role": "FOUNDATION",
  "claim": "Selected plan satisfies hard constraints",
  "inputs": ["n_011", "n_018"],
  "evidence": ["doc_7", "rule_3"],
  "constraints": ["budget<=x", "must_cite_source"],
  "status": "draft|validated|rejected|blocked|synthesized",
  "score": {
    "confidence": 0.71,
    "consistency": 0.93,
    "grounding": 0.88,
    "cost": 0.0
  }
}
```

### Layer 6 — Verification Loop (Hard Requirement)
Every node must pass four checks before promotion to `validated`:
1. Local consistency
2. Evidence sufficiency
3. Parent-child coherence
4. Global conflict scan

### Layer 7 — Adaptive Routing (Cost + Intelligence)
Route by node role:

| Role Zone | Default Model Tier |
|-----------|--------------------|
| INTENT / BALANCE / REALIZATION | Strongest available |
| KNOWLEDGE / COMPREHENSION | Medium tier |
| Leaf verification / narrow feasibility | Lightweight |

Result: ~79% token reduction with equivalent accuracy (RouteGoT finding).

### Layer 8 — Grounding Layer
Attach reasoning steps to structured data and external truth sources. Prevents "internally consistent but externally wrong" outputs.

### Layer 9 — Complexity Controller
Detect problem difficulty and adjust:
- Graph expansion depth
- Verification intensity
- Compute budget

---

## Execution Flow

1. **Intake:** User input → INTENT + WISDOM + initial KNOWLEDGE nodes (seed graph)
2. **Decomposition:** Assess complexity → direct solve or expand to subgraphs
3. **Planning Phase (Nodes 3–7):** Graph expands dynamically with constraint pruning
4. **Execution Phase (Nodes 8–11):** Validated branches feed synthesis gate
5. **Verification:** Local + global validation pass on all candidate outputs
6. **Synthesis:** Merge validated subgraphs → REALIZATION node
7. **Audit Export:** Final answer + reasoning graph summary + blocked branches + unresolved disputes + evidence map

---

## Build Order (Sprint Plan)

### Sprint 1 — Foundation
- Graph schema
- Node role ontology
- Validator skeleton
- Table/audit representation

### Sprint 2 — Core Engine
- Decomposition engine
- Constraint engine
- Synthesis gate

### Sprint 3 — Intelligence + Efficiency
- Adaptive routing
- Cost budget controller
- Benchmark harness

### Sprint 4 — Validation + Research
- Ontology ablations: 11 roles vs. collapsed roles
- Fixed traversal vs. adaptive activation comparison
- Publish findings

---

## Benchmark Categories

| Category | Tests |
|----------|-------|
| Constrained planning | Hidden constraints, conflicting goals, feasibility detection |
| Reasoning integrity | Unsupported leap detection, contradiction handling, branch pruning quality |
| Synthesis quality | Merge consistency, final answer grounding, unresolved dispute reporting |
| Cost efficiency | Token usage, latency, routing gains |
| Robustness | Adversarial prompts, incomplete information, ambiguous intent |

---

## Open Research Questions (preserved)

1. Are the 11 roles optimal, or just interpretable?
2. Which roles are most predictive of better outcomes?
3. When does extra structure help vs. hurt?
4. What is the correct branching policy by task complexity?
5. Does adaptive activation outperform full-role traversal?
6. Which tasks benefit most from graph execution?

---

## Strongest Objection (from research)

The literature validates adaptive graph decomposition, structured proof/search, explicit state schemas, and verification loops. It does **not** validate that the exact 11-role A11 ontology is uniquely optimal.

**Correct framing:** Treat A11 roles as a hypothesis layer over a proven runtime pattern. The architecture is sound. The ontology is testable.
