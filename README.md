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

## Troubleshooting

  postgres setup requires a complete reinstall of postgres using homebrew.
  read this first: http://russbrooks.com/2010/11/25/install-postgresql-9-on-os-x
  see: http://stackoverflow.com/questions/17971101/how-do-i-start-enterpisedb-postgresql-on-mac-osx-10-6-8
  &: http://stackoverflow.com/questions/17633422/psql-fatal-database-user-does-not-exist

  then cd into your directory, bundle and run rake db:create db:migrate db:seed

  if you run into sequencing issues, it's b/c postgres is using system sequencing. run this command in rails c:
    ActiveRecord::Base.connection.tables.each { |t| ActiveRecord::Base.connection.reset_pk_sequence!(t) }
