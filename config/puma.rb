workers 1
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count
preload_app!

rackup      DefaultRackup
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
on_worker_boot do
  ActiveRecord::Base.establish_connection
end

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
