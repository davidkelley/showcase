module Store
  DATABASE_CONNECTION = ENV['DATABASE_CONNECTION']

  Configuration = ROM::Configuration.new(:sql, DATABASE_CONNECTION)

  Configuration.auto_registration(__dir__)

  Connection = ROM.container(Configuration)
end
