module ApplicationHelper
  def athlete_signed_in?
    current_athlete.present?
  end
end
