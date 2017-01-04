require 'coveralls'
Coveralls.wear!

require 'airborne'
require 'database_cleaner'
require 'factory_girl'
require 'faker'

require File.expand_path('../../config/environment', __FILE__)
require File.expand_path('../../system/container', __FILE__)

Application.finalize!

Dir["#{File.expand_path('../', __FILE__)}/factories/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner[:sequel].clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner[:sequel].strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner[:sequel].start
  end

  config.after(:each) do
    DatabaseCleaner[:sequel].clean
  end
end
