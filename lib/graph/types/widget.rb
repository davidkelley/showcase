module Graph
  module Types
    Widget = GraphQL::ObjectType.define do
      name "Widget"
      field :id, !types.ID
    end
  end
end
