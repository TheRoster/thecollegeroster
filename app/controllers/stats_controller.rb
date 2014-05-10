class StatsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @stat = Stat.new
  end

  def edit
  end

  def create
    @stat = current_athlete.stats.build(stat_params)
    if @stat.save
      redirect_to athletes_url, flash: { success: 'Stat saved!' }
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

    def stat_params
      params.require(:stat).permit(:stat_name, :value)
    end

    def correct_athlete
      @stat = current_athlete.stats.find_by(id: params[:id])
      redirect_to athletes_path if @stat.nil?
    end

end
