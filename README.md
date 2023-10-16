# ASP-based Visualization

This project aims at enabling an automated visualization based on ASP. This shall include the visualization of specification and implementation details in the system-level synthesis of multi-processor systems.
For the solution of this approach the tool **clingraph** (See: [https://doi.org/10.1007/978-3-031-15707-3_31](url)) is used.

## Prerequisites
- Requires the installation of **clingraph**, **clingo**, **clingo-dl** and **asprin** (See [https://anaconda.org/potassco/repo](url))

## Examplary Executions for the Exploration of the System Synthesis Decisions
#### Deciding on the binding
`clingo instances/test.lp encodings/encoding_binding.lp 0`

#### Deciding on the binding and routing
`clingo instances/test.lp encodings/encoding_binding.lp encodings/encoding_routing_hop_arb.lp 0`

#### Deciding on the binding, routing and scheduling (by use of the background theory)
`python src/dseApp.py instances/test.lp encodings/encoding_binding.lp encodings/encoding_routing_hop_arb.lp encodings/encoding_scheduling.lp encodings/priorities.lp`

#### Deciding on the system synthesis while performing a multi-opbjective optimization
`python src/dseApp.py instances/test.lp encodings/encoding_binding.lp encodings/encoding_routing_hop_arb.lp encodings/encoding_scheduling.lp encodings/priorities.lp encodings/preferences.lp`
