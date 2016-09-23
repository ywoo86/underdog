class MatchupsController < ApplicationController

  def index
    @match_ups = Matchup.all

  end
end
