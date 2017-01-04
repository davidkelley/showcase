module Graph
  module Types
    User = GraphQL::ObjectType.define do
      name "User"
      field :id, !types.ID
      field :name, !types.String
    end
  end
end
