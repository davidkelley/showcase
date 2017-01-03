source 'https://rubygems.org'

group :default do
  gem 'bigdecimal'

  # gem 'dry-system', '~> 0.5'

  gem 'dry-system', github: 'dry-rb/dry-system', ref: 'bd16cd842756441123ea6e2ee63e91c2579eb48e'

  gem 'graphql', '~> 1.3'

  gem 'puma', '~> 3.6'

  gem 'rack', '~> 2.0'

  gem 'rack-cors', '~> 0.4'

  gem 'roda', '~> 2.21'

  gem 'yajl-ruby', '1.2.1', require: 'yajl'
end

group :development do
  gem 'guard'

  gem 'guard-pow', require: false
  
  gem 'guard-rspec', '~> 4.7'
end

group :test do
  gem 'airborne', '~> 0.1.15'

  gem 'coveralls'

  gem 'factory_girl'

  gem 'faker'

  gem 'rspec', '~> 3.1'

  gem 'rubocop'
end
