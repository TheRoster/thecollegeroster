class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def edit
    @athlete = Athlete.find(params[:id])
    @high_schools = HighSchool.all
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      sign_in @athlete
      flash[:success] = "You were successfully created."
      redirect_to edit_athlete_url(@athlete)
    else
      render :new
    end
  end

  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update_attributes(athlete_params)
      flash[:success] = "Profile Updated!"
      redirect_to @athlete
    else
      render 'edit'
    end
  end

  def destroy
    Athlete.find(params[:id]).destroy
    flash[:success] = "Athlete deleted."
    redirect_to athlete_url
  end

  private

    def athlete_params
      params.require(:athlete).permit!
    end

end
