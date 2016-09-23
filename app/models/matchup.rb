class Matchup < ApplicationRecord

  belongs_to :winner,
    class_name: "Team",
    foreign_key: "winner_id"

  belongs_to :loser,
    class_name: "Team",
    foreign_key: "loser_id"

  belongs_to :home_team,
    class_name: "Team",
    foreign_key: "home_team_id"

  belongs_to :away_team,
    class_name: "Team",
    foreign_key: "away_team_id"

  scope :with_results, -> { includes(:winner, :loser, :home_team, :away_team) }
end
