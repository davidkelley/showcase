module Store
  module Repositories
    class User < ROM::Repository[:users]
      class Entity
        extend Dry::Initializer::Mixin

        option :id, type: Types::Coercible::Int
        option :name, type: Types::Strict::String
      end

      commands :create, update: :by_pk, delete: :by_pk

      def query(conditions)
        users.where(conditions)
      end

      def find(id)
        Entity.new users.fetch(id)
      end

      def self.call(&block)
        new(Application['store.connection']).instance_exec(&block)
      end
    end
  end
end
