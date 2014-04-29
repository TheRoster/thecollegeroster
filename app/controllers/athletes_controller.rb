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
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      flash[:success] = "Athlete #{@athlete.first_name} #{@athlete.last_name} was successfully created."
      redirect_to athletes_url
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @athlete.update(athlete_params)
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete }
      else
        format.html { render :edit }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @athlete.destroy
    respond_to do |format|
      format.html { redirect_to athletes_url }
      format.json { head :no_content }
    end
  end

  private
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
