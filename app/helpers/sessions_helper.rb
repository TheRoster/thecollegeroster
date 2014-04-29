module SessionsHelper

  def sign_in(athlete)
    remember_token = Athlete.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    athlete.update_attribute(:remember_token, Athlete.digest(remember_token))
    self.current_athlete = athlete
  end

  def sign_out
    current_athlete.update_attribute(:remember_token,
                                  Athlete.digest(Athlete.new_remember_token))
    cookies.delete(:remember_token)
    self.current_athlete = nil
  end

  def current_athlete=(athlete)
    @current_athlete = athlete
  end

  def current_athlete
    remember_token = Athlete.digest(cookies[:remember_token])
    @current_athlete ||= Athlete.find_by(remember_token: remember_token)
  end

  def athlete_signed_in?
    current_athlete.present?
  end

end
