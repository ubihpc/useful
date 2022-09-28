# Network science and graph theory

Based on book **Graph Machine Learning_ Take graph data to the next level by applying machine learning techniques and algorithms-Packt Publishing (2021)** by *Claudio Stamile, Aldo Marzullo and Enrico Deusebio* 

#### Concepts

* **Graph**: A graph is a mathematical model that is used for describing relations between entities.
* **Order**: The order of a graph is the number of its vertices $|V|$. The size of a graph is the number of its edges $|E|$.
* **Degree**: The degree of a vertex is the number of edges that are adjacent to it. The neighbors of a vertex v in a graph G is a subset of vertex V′ induced by all vertices adjacent to v.
* **Neighborhood graph**: The neighborhood graph (also known as an ego graph) of a vertex v in a graph G is a subgraph of G, composed of the vertices adjacent to v and all edges connecting vertices adjacent to v.
* **Indegree and outdegree**: For a vertex v, the number of head ends adjacent to v is called the **indegree**, indicated by $deg^-(v)$ of v, while the number of tail ends adjacent to v is its **outdegree**, indicated by $deg^+(v)$ of v.
* **Adjacency matrix**: The adjacency matrix M of a graph $G=(V,E)$ is a square matrix $(|V| × |V|)$ matrix such that its element is 1 (graph, digraph), X (sum of 1s, one per each edge in a multigraph), weight (weighted graph) when there is an edge from node i to node j, and 0 when there is no edge.
* **Edge list**: The edge list L of a graph $G=(V,E)$ is a list of size |E| matrix such that its element $L_i$ is a couple representing the tail and the end node of the edge $i$

#### Types of graphs

* **Digraph**: A digraph (directed graph) G is defined as a couple G=(V, E), where V={ v1, .., vn } is a set of nodes and E={(vk , vw ) .., ( vi, vj)} is a set of ordered couples representing the connection between two nodes belonging to V.
* **Multigraph**: A multigraph G is defined as G=(V, E), where V is a set of nodes and E is a multi-set (a set allowing multiple instances for each of its elements) of edges.
* **Undirected and Directed multigraph**: A multigraph is called a directed multigraph if E is a multi-set of ordered couples; otherwise, if E is a multi-set of two-sets, then it is called an undirected multigraph.
* **Edge-weighted graph**: An edge-weighted graph (or simply, a weighted graph) G is defined as G=(V, E ,w) where V is a set of nodes, E is a set of edges, and w: E → ℝ is the weighted function that assigns at each edge e ∈ E a weight expressed as a real number.
* **Node-weighted graph**: A node-weighted graph G is defined as G=(V, E ,w) ,where V is a set of nodes, E is a set of edges, and w: V → ℝ is the weighted function that assigns at each node v ∈ V a weight expressed as a real number.
* **Kth-partite graphs**: graphs whose vertices can be partitioned in two,three, or more k-th sets of nodes, respectively. Edges are only allowed across different sets and are not allowed within nodes belonging to the same set. In most cases, nodes belonging to different sets are also characterized by particular node types.

Considerations

* If E is a set of ordered couples, then we call it a *directed weighted graph*.
• If E is a set of two-sets, then we call it an *undirected weighted graph*.
• If E is a multi-set, we will call it a *undirected weighted multigraph*.
• If E is a multi-set of ordered couples, it is an *weighted multigraph (directed weighted multigraph)*.

#### Graph properties

A network presents intrinsic properties. Such properties can be measured by particular metrics, and each measure may characterize one or several local and global aspects of the graph. Those metrics are defined as global when expressing a measure of an overall network. On the other hand, local metrics measure values of individual network elements (nodes or edges). In weighted graphs, each property may or may not account for the edge weights, leading to weighted and unweighted metrics.

* **Integration metrics**: These measure how nodes tend to be interconnected with each other.
• **Segregation metrics**: These quantify the presence of groups of interconnected nodes, known as communities or modules, within a network.
• **Centrality metrics**: These assess the importance of individual nodes inside a network.
• **Resilience metrics**: These can be thought of as a measure of how much a network is able to maintain and adapt its operational performance when facing failures or other adverse conditions.

##### Integration metrics

* **Distance**: The concept of distance in a graph is often related to the number of edges to traverse in order to reach a target node from a given source node.
* **Path**: The set of edges connecting node $i$ to node $j$ is called a path.
* **Shortest path**: The shortest path between a source node $i$ and a target node $j$ is the path having the lowest number of edges compared to all the possible paths between $i$ and $j$. 
* **Diameter**: The diameter of a network is the number of edges contained in the longest shortest path among all possible shortest paths.
* **Characteristic path length**: The characteristic path length is defined as the average of all the shortest path lengths between all possible pair of nodes. If is the average path length between the node and all the other nodes, the characteristic path length is computed as follows:

$\frac{1}{q(q-1)}\sum_{i∈V}^n l_i$