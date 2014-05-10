class SessionsController < ApplicationController
  def new
  end

  def create
    athlete = Athlete.find_by_email(params[:email])
    if athlete && athlete.authenticate(params[:password])
      sign_in athlete
      redirect_to 
    else
      flash[:error] = 'Invalid email/password combination'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
