module AthletesHelper
  def full_name athlete
   return "" unless athlete
   "#{athlete.first_name} #{athlete.last_name}"
  end

  def welcome_name athlete
    return "" unless athlete
    "#{athlete.first_name} #{athlete.last_name[0]}"
  end

end
