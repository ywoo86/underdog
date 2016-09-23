class RemoveAwayAndHomeFromMatchups < ActiveRecord::Migration[5.0]
  def change
    remove_column :matchups, :away_team
    remove_column :matchups, :home_team
  end
end
