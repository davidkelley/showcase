module Graph
  module Mutations
    UpdateUser = GraphQL::Relay::Mutation.define do
      name "UpdateUser"

      input_field :id, !types.ID
      
      input_field :name, !types.String

      return_type Application['graph.types.user']

      resolve Application['graph.resolvers.user'].with(:update)
    end
  end
end
