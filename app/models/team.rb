class Team < ApplicationRecord
  has_many :users
  has_many :matchups
end

# matchuup_home_id.team.name
