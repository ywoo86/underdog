class Matchup < ApplicationRecord

  belongs_to :winner,
    class_name: "Team",
    foreign_key: "winner_id"

  belongs_to :loser,
    class_name: "Team",
    foreign_key: "loser_id"

  belongs_to :home_team_id,
    class_name: "Team",
    foreign_key: "home_team_id"

  belongs_to :away_team_id,
    class_name: "Team",
    foreign_key: "away_team_id"

  scope :with_results, -> { includes(:winner_id, :loser_id, :home_team_id, :away_team_id) }
end
