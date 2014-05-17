class StatsController < ApplicationController

  def show
    @stat = Stat.find(params[:id])
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
    @stat = Stat.find(params[:id])
    @stat.destroy

    redirect_to athletes_url
  end

  private

    def stat_params
      params.require(:stat).permit(:points, :rebounds, :assists, :blocks,
                                   :turnovers, :minutes_played, :date_played
                                  )
    end

    def correct_athlete
      @stat = current_athlete.stats.find_by(id: params[:id])
      redirect_to athletes_path if @stat.nil?
    end

end
