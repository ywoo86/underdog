class AddMatchesToPicks < ActiveRecord::Migration[5.0]
  def change
    add_reference :picks, :user
    add_reference :picks, :matchup_1
    add_reference :picks, :matchup_2
    add_reference :picks, :matchup_3
  end
end
