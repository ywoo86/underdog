class AddColumnToMatchup < ActiveRecord::Migration[5.0]
  def change
    add_column :matchups, :week, :integer
  end
end
