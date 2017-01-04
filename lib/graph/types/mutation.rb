module Graph
  module Types
    Mutation = GraphQL::ObjectType.define do
      name "Mutation"
      description "Provides strict mutations within the system"

      field :createUser, field: Application['graph.mutations.create_user'].field

      field :updateUser, field: Application['graph.mutations.update_user'].field
    end
  end
end
