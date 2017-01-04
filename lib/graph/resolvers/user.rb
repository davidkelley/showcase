module Graph
  module Resolvers
    class User
      def repository(&block)
        Application['store.repositories.user'].call(&block)
      end

      def find(object, inputs, ctx)
        repository do
          begin
            find(inputs['id'])
          rescue ROM::TupleCountMismatchError
            GraphQL::ExecutionError.new("No user with ID #{inputs['id']}")
          end
        end
      end

      def create(object, inputs, ctx)
        repository { create(inputs.to_h) }
      end

      def update(object, inputs, ctx)
        repository do
          set = changeset(inputs['id'], inputs.to_h)
          update(inputs['id'], set)
        end
      end

      def self.with(sym, *_)
        new(*_).method(sym)
      end
    end
  end
end
