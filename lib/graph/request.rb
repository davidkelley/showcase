module Graph
  class Request
    extend Dry::Initializer::Mixin

    option :query, type: Types::Strict::String
    option :variables, type: Types::Json::Hash, default: proc { {} }

    def execute
      @execution ||= GraphQL::Query.new(schema, query, variables: variables).result
    end

    def status
      execute.has_key?('data') ? 200 : 500
    end

    def body
      execute[status == 200 ? 'data' : 'errors'].to_json
    end

    def variables
      if super.is_a? String
        JSON.parse(super)
      else
        super
      end
    end

    def schema
      Application['graph.schema']
    end
  end
end
