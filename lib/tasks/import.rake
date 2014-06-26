require 'csv'

desc 'Import data from CSV'
namespace :import do

  desc 'Import all CSVs'
  task :all => [:environment, 'import:high_schools']

  desc 'Import High School CSV'
  task :high_schools => [:environment] do
    start = Time.now
    p 'Importing high schools...'
    filename = 'doc/high_schools.csv'
    SmarterCSV.process(filename, {:file_encoding => 'utf-8'}) do |array| 
      HighSchool.create( array.first )
    end
    p "Finished in #{Time.now - start}"
  end

end
