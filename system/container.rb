require 'dry/system/container'

class Application < Dry::System::Container
  class Loader < Dry::System::Loader
    def call(*args)
      constant
    end
  end

  configure do |config|
    config.auto_register = %w(lib)
    config.loader = Loader
  end

  load_paths!('lib')
end
