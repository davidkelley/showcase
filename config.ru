require_relative 'config/environment'
require_relative 'system/container'

Application.finalize!

app = Rack::Builder.app do
  use Rack::CommonLogger
  use Rack::Deflater
  run Application['responder']
end

run app
