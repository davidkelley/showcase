module Graph
  module Types
    Query = GraphQL::ObjectType.define do
      name "Query"
      description "The query root of this schema"

      field :user do
        type -> { Application['graph.types.user'] }

        argument :id, !types.ID

        description "Find a User by ID"

        resolve Application['graph.resolvers.user'].with(:find)
      end
    end
  end
end
