class CreateMatchUps < ActiveRecord::Migration[5.0]
  def change
    create_table :match_ups do |t|

      t.timestamps
    end
  end
end
