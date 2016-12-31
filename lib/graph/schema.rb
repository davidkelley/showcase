module Graph
  Schema = GraphQL::Schema.define do
    query Application['graph.types.query']
  end
end
