require_relative 'config/environment'
require_relative 'system/container'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    Application.finalize!
  end
end
