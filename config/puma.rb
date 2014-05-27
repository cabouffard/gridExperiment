threads 1, 8
workers 2
pidfile "tmp/pids/puma.pid"
state_path "tmp/pids/puma.state"
environment ENV["RAILS_ENV"] || "development"
bind "unix://tmp/sockets/puma.sock"
