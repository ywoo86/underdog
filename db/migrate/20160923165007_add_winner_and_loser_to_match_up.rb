class AddWinnerAndLoserToMatchUp < ActiveRecord::Migration[5.0]
  def change
    add_reference :matchups, :winner
    add_reference :matchups, :loser
  end
end
