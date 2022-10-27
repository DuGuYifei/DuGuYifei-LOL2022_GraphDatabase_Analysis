// 1. Community detection algorithms
// Labeled propagation algorithm
CALL gds.graph.project(
  'lbl',
  ['Team', 'Player'],
  'IS_MEMBER_OF'
)

CALL gds.labelPropagation.stream('lbl')
YIELD nodeId, communityId AS Community
RETURN gds.util.asNode(nodeId).name AS Name, Community
ORDER BY Community, Name

// 2. Similarity algorithms
// Jaccard similarity
MATCH (p1:Player {name: 'Gumayusi'})-[:IS_MEMBER_OF]->(m:Team)
WITH p1, collect(id(m)) AS p1team
MATCH (p2:Player)-[:IS_MEMBER_OF]->(m2:Team) WHERE p1 <> p2
WITH p1, p1team, p2, collect(id(m2)) AS p2team
RETURN p1.name AS from,
       p2.name AS to,
       gds.similarity.jaccard(p1team, p2team) AS similarity
ORDER BY similarity DESC

// 3. Centrality algorithms
// Degree centrality
CALL gds.graph.project(
  'lbl2',
  ['Team', 'Player', 'Match'],
  ['IS_MEMBER_OF', 'FIGHT_IN']
)

CALL gds.degree.stream('lbl2')
YIELD nodeId, score
WHERE EXISTS(gds.util.asNode(nodeId).league)
RETURN gds.util.asNode(nodeId).name AS name, score AS followers
ORDER BY followers DESC, name DESC
