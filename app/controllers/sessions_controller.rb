class SessionsController < ApplicationController
  def new
  end

  def create
    athlete = Athlete.find_by_id(params[:email])
    if athlete and athlete.authenticate(params[:password])
        session[:email] = athlete.email
        redirect_to athletes_url
    else
      redirect_to login_path, alert: 'Invalid username/password combination'
    end
  end

  def destroy
    session[:email] = nil
    redirect_to welcome_url, notice: "You've logged out. Thanks!"
  end
end
