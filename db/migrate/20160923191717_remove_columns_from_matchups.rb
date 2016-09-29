class RemoveColumnsFromMatchups < ActiveRecord::Migration[5.0]
  def change
    remove_column :matchups, :winner_id
    remove_column :matchups, :loser_id
  end
end
