class MatchupsController < ApplicationController

  def index
    # week = 1
    @weeks = (1..17)
    @teams = Team.all

    # Matchup.where(week: week)

  end

  def show
    @matchups = Matchup.where(week: params[:id])
    @teams = Team.all
  end
end
