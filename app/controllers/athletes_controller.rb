class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_athlete!

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete
  end

  def new
    @athlete = Athlete.new
  end


  private

    def set_athlete
      @athlete = Athlete.find_by_id(params[:id])
    end

    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :password, :email)
    end

end
