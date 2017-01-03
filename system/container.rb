require 'dry/system/container'

require_relative 'loader'

class Application < Dry::System::Container
  configure do |config|
    config.auto_register = %w(lib)
    config.loader = Loader
  end

  load_paths!('lib')
end
