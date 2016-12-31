module Graph
  module Types
    Query = GraphQL::ObjectType.define do
      name "Query"
      description "The query root of this schema"

      field :widget do
        type -> { Application['graph.types.widget'] }
        argument :id, !types.ID
        description "Find a Widget by ID"
        resolve -> (obj, args, ctx) do
          # TODO: temp object
          widget = Struct.new(:id)
          widget.new(1)
        end
      end
    end
  end
end
