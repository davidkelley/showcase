class Loader < Dry::System::Loader
  def call(*args)
    constant
  end
end
