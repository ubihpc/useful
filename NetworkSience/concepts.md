# Network science and graph theory

#### Concepts

* **Order**: The order of a graph is the number of its vertices |V|. The size of a graph is the number of its edges |E|.
* **Degree**: The degree of a vertex is the number of edges that are adjacent to it. The neighbors of a vertex v in a graph G is a subset of vertex V′ induced by all vertices adjacent to v.
* **Neighborhood graph**: The neighborhood graph (also known as an ego graph) of a vertex v in a graph G is a subgraph of G, composed of the vertices adjacent to v and all edges connecting vertices adjacent to v.
* **Indegree and outdegree**: For a vertex v, the number of head ends adjacent to v is called the **indegree**, indicated by deg-(v) of v, while the number of tail ends adjacent to v is its **outdegree**, indicated by deg+(v) of v.

#### Types of graphs

* **Digraph**: A digraph (directed graph) G is defined as a couple G=(V, E), where V={ v1, .., vn } is a set of nodes and E={(vk , vw ) .., ( vi, vj)} is a set of ordered couples representing the connection between two nodes belonging to V.
* **Multigraph**: A multigraph G is defined as G=(V, E), where V is a set of nodes and E is a multi-set (a set allowing multiple instances for each of its elements) of edges.
* **Undirected and Directed multigraph**: A multigraph is called a directed multigraph if E is a multi-set of ordered couples; otherwise, if E is a multi-set of two-sets, then it is called an undirected multigraph.
**Edge-weighted graph**: An edge-weighted graph (or simply, a weighted graph) G is defined as G=(V, E ,w) where V is a set of nodes, E is a set of edges, and w: E → ℝ is the weighted function that assigns at each edge e ∈ E a weight expressed as a real number.
**Node-weighted graph**: A node-weighted graph G is defined as G=(V, E ,w) ,where V is a set of nodes, E is a set of edges, and w: V → ℝ is the weighted function that assigns at each node v ∈ V a weight expressed as a real number.

Considerations

* If E is a set of ordered couples, then we call it a *directed weighted graph*.
• If E is a set of two-sets, then we call it an *undirected weighted graph*.
• If E is a multi-set, we will call it a *undirected weighted multigraph*.
• If E is a multi-set of ordered couples, it is an *weighted multigraph (directed weighted multigraph)*.