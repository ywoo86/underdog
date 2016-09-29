class AddHomeAndAwayToMatchups < ActiveRecord::Migration[5.0]
  def change
    add_reference :matchups, :home_team
    add_reference :matchups, :away_team
  end
end
