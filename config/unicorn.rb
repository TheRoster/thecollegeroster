root = "/home/thecollegeroster"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/home/thecollegeroster/tmp/unicorn.thecollegeroster.sock"
worker_processes 2
timeout 30
