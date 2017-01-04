module Store
  module Relations
    class Users < ROM::Relation[:sql]
      schema do
        attribute :id, Types::Int
        attribute :name, Types::String

        primary_key :id
      end
    end
  end
end
