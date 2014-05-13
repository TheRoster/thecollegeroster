class HighSchool < ActiveRecord::Base

  def index
    @high_school = HighSchool.order('high_school_name asc').all
  end

end

