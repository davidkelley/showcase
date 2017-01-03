class Routes < Roda
  route do |r|
    r.post do
      Application['graph.schema'].execute(request.body.string)
    end
  end
end
end
