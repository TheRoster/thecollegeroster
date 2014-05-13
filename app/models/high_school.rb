class HighSchool < ActiveRecord::Base
  respond_to :html, :json

  def index
    @high_school = HighSchool.order('high_school_name asc').all
    respond_with @high_school
  end

end

