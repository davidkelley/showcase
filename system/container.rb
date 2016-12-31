require 'dry/system/container'

class ClassLoader < Dry::System::Loader
  def call(*args)
    constant
  end
end

class Application < Dry::System::Container
  configure do |config|
    # config.root = File.expand_path('../', __FILE__)
    config.auto_register = %w(lib)
    config.loader = ClassLoader
  end

  load_paths!('lib')
end
