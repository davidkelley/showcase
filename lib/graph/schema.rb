module Graph
  Schema = GraphQL::Schema.define do
    query Application['graph.types.query']
    mutation Application['graph.types.mutation']
  end
end
