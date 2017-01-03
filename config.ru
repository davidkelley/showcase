require_relative 'config/environment'
require_relative 'system/container'

Application.finalize!

run Application['routes'].freeze.app
