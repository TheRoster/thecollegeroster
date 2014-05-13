require 'csv'

class Importer

  def self.execute
    high_school_file_path = "#{Rails.root}/lib/data/high_school.csv"
    sport_file_path = "#{Rails.root}/lib/data/sports.csv"
    # position_file_path = "#{Rails.root}/lib/data/positions.csv"

    importer = Importer.new

    message "Importing high schools..."
    HighSchoolImporter.new(high_school_file_path).run

    message "Importing sports..."
    SportsImporter.new(sport_file_path).run

    # message "Importing positions..."
    # SportsImporter.new(position_file_path).run
  end
end

