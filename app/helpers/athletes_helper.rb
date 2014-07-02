module AthletesHelper
  def full_name athlete
   return "" unless athlete
   "#{athlete.first_name} #{athlete.last_name}"
  end

  def welcome_name athlete
    return "" unless athlete
    "#{athlete.first_name} #{athlete.last_name[0]}"
  end

  def athlete_high_school athlete
    "#{athlete.high_school_name}"
  end

  def setup_hs athlete
    athlete.high_school ||= HighSchool.new
    athlete
  end
end
