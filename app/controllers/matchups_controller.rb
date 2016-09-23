class MatchupsController < ApplicationController

  def index
    @match_ups = Matchup.all.with_results
  end
end
