class Routes < Roda
  use Rack::Deflater

  plugin :default_headers, 'Content-Type' => 'application/json'

  route do |r|
    r.on "q" do
      r.post do
        def json(request)
          JSON.parse(request.body.string, symbolize_names: true)
        end

        graph = Application['graph.request'].new(**json(r))
        response.status = graph.status
        graph.body
      end
    end
  end
end
