## The College Roster
  Welcome to the College Roster. Interested? Contact Peter Franconi: peter.franconi@gmail.com
  
  Peter is really cool

## Common server command line tools

  rsync -a ~/home/directory/of/app root@[servername]:remote/directory/of/app

  RAILS_ENV=production rake db:migrate
  RAILS_ENV=production bundle exec rake assets:clean
  RAILS_ENV=production bundle exec rake assets:precompile

  service [software_name] start
  service [software_name] stop
  service [software_name] restart

  mysql -u developer -p     #connect as the developer

  scp [database name].sql [username]@[servername]:path/to/database/   #you can run this in reverse too

  sudo bundle exec unicorn_rails -c /home/thecollegeroster/config/unicorn.rb -D -E production

  sudo shutdown -h now
  sudo reboot now

  ps aux | grep unicorn (or any other server process)

  abhi=# CREATE DATABASE college_roster;
  abhi=# CREATE USER tcr_user WITH PASSWORD 'password';
