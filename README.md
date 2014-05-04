## The College Roster
  Welcome to the College Roster. Interested? Contact Peter Franconi: peter.franconi@gmail.com

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
