class SessionsController < ApplicationController
  def new
  end

  def create
    athlete = Athlete.find_by_email(params[:email])
    if athlete && athlete.authenticate(params[:password])
        session[:email] = athlete.email
        redirect_to athletes_url
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
    end
  end

  def destroy
    session[:email] = nil
    redirect_to welcome_url, notice: "You've logged out. Thanks!"
  end
end
