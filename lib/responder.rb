class Responder
  def initialize(env)
    @env = env
    @request = Rack::Request.new(@env)
  end

  def query
    JSON.parse(@request.body.string)['query']
  end

  def execute
    resp = Application['graph.schema'].execute(query)
    [200, {'Content-Type' => 'application/json'}, [resp.to_json]]
  end

  def self.call(env)
    self.new(env).execute
  end
end
