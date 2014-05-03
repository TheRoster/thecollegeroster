class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]

  def index
    @athletes = Athlete.all
  end

  def show
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
      flash[:success] = "Athlete #{@athlete.first_name} #{@athlete.last_name} was successfully created."
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
    # @athlete.destroy
    # respond_to do |format|
      # format.html { redirect_to athletes_url }
      # format.json { head :no_content }
    # end
  end

  private
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :email, :high_school, :grad_year, :sport, :height, :weight, :sat, :act, :gpa, :class_rank, :password, :password_confirmation)
    end

end
