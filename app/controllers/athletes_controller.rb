class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
    # @high_school = @athlete.high_school.name
    # @sport = @athlete.sport.name
    # @position = @athlete.position.name
  end

  def new
    @athlete = Athlete.new
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      sign_in @athlete
      flash[:success] = "You were successfully created."
      redirect_to athletes_url
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
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :email,
                                      :grad_year, :height, :weight,
                                      :password, :password_confirmation,
                                      :high_school_id, :sport_id, :position_id,
                                      :stat, :avatar)
    end

end
