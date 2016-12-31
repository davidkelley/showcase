workers Integer(ENV['CLUSTERED_WORKERS'] || 1)

threads Integer(ENV['MIN_THREADS'] || 1), Integer(ENV['MAX_THREADS'] || 16)

preload_app!

rackup DefaultRackup

port ENV['PORT']

# on_worker_boot {  }
