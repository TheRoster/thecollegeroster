class SessionsController < ApplicationController
  def new
  end

  def create
    athlete = Athlete.find_by_id(params[:id])
    if user and user.authenticate(params[:password])
        session[:athlete_id] = athlete.id
        redirect_to athletes_url
    else
      redirect_to welcome_url, alert: 'Invalid username/password combination'
    end
  end

  def destroy
    session[:athlete_id] = nil
    redirect_to welcome_url, notice: "You've logged out. Thanks!"
  end
end
