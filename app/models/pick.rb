class Pick < ApplicationRecord
  belongs_to :matchup1_id,
    class_name: "Matchup",
    foreign_key: "matchup1_id"

  belongs_to :matchup2_id,
    class_name: "Matchup",
    foreign_key: "matchup2_id"

  belongs_to :matchup3_id,
    class_name: "Matchup",
    foreign_key: "matchup3_id"
end
