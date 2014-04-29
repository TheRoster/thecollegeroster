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
    sign_out
    redirect_to root_url
  end
end
