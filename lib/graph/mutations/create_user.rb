module Graph
  module Mutations
    CreateUser = GraphQL::Relay::Mutation.define do
      name "CreateUser"

      input_field :name, !types.String

      return_type Application['graph.types.user']

      resolve Application['graph.resolvers.user'].with(:create)
    end
  end
end
