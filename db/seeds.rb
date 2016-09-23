# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.delete_all
User.delete_all
Matchup.delete_all

Team.create([
  { name: "Arizona Cardinals", alias: "ARI", palette: "#9B2743", image_url: "ARI.png" },
  { name: "Atlanta Falcons", alias: "ATL", palette: "#BD0D18", image_url: "ATL.png" },
  { name: "Baltimore Ravens", alias: "BAL", palette: "#280353", image_url: "BAL.png" },
  { name: "Buffalo Bills", alias: "BUF", palette: "#00338D", image_url: "BUF.png" },
  { name: "Carolina Panthers", alias: "CAR", palette: "#0088CE", image_url: "CAR.png" },
  { name: "Chicago Bears", alias: "CHI", palette: "#03202F", image_url: "CHI.png" },
  { name: "Cincinnati Bengals", alias: "CIN", palette: "#FB4F14", image_url: "CIN.gif" },
  { name: "Cleveland Browns", alias: "CLE", palette: "#FE3C00", image_url: "CLE.png" },
  { name: "Dallas Cowboys", alias: "DAL", palette: "#0D254C", image_url: "DAL.gif" },
  { name: "Denver Broncos", alias: "DEN", palette: "#FB4F14", image_url: "DEN.png" },
  { name: "Detroit Lions", alias: "DET", palette: "#006DB0", image_url: "DET.png" },
  { name: "Green Bay Packers", alias: "GB", palette: "#203731", image_url: "GB.png" },
  { name: "Houston Texans", alias: "HOU", palette: "#02253A", image_url: "HOU.png" },
  { name: "Indianapolis Colts", alias: "IND", palette: "#003B7B", image_url: "IND.png" },
  { name: "Jacksonville Jaguars", alias: "JAC", palette: "#006778", image_url: "JAC.png" },
  { name: "Kansas City Chiefs", alias: "KC", palette: "#B20032", image_url: "KC.png" },
  { name: "Los Angeles Rams", alias: "LA", palette: "#13264B", image_url: "LA.png" },
  { name: "Miami Dolphins", alias: "MIA", palette: "#008D97", image_url: "MIA.png" },
  { name: "Minnesota Vikings", alias: "MIN", palette: "#3B0160", image_url: "MIN.png" },
  { name: "New England Patriots", alias: "NE", palette: "#0D254C", image_url: "NE.gif" },
  { name: "New Orleans Saints", alias: "NO", palette: "#D2B887", image_url: "NO.gif" },
  { name: "New York Giants", alias: "NYG", palette: "#192F6B", image_url: "NYG.gif" },
  { name: "New York Jets", alias: "NYJ", palette: "#0C371D", image_url: "NYJ.gif" },
  { name: "Oakland Raiders", alias: "OAK", palette: "#C4C8CB", image_url: "OAK.gif" },
  { name: "Philadelphia Eagles", alias: "PHI", palette: "#003B48", image_url: "PHI.png" },
  { name: "Pittsburgh Steelers", alias: "PIT", palette: "#FFB612", image_url: "PIT.png" },
  { name: "San Diego Chargers", alias: "SD", palette: "#0072CE", image_url: "SD.png" },
  { name: "San Francisco 49ers", alias: "SF", palette: "#AF1E2C", image_url: "SF.gif" },
  { name: "Seattle Seahawks", alias: "SEA", palette: "#002244", image_url: "SEA.png" },
  { name: "Tampa Bay Buccaneers", alias: "TB", palette: "#D60A0B", image_url: "TB.png" },
  { name: "Tennessee Titans", alias: "TEN", palette: "#648FCC", image_url: "TEN.png" },
  { name: "Washington Redskins", alias: "WAS", palette: "#773141", image_url: "WAS.gif" }
])

a = Team.first
b = Team.last

Matchup.create({winner_id: a, loser_id: b})

User.create([
  { name: "Michael Woo", email: "michael@test.com", password_hash: "12345", subtotal: 0, total: 0, team_id: 23, admin: false},
  { name: "Ricky Bobby", email: "ricky@test.com", password_hash: "12345", subtotal: 0, total: 0, team_id: 10, admin: false}
])

puts "created #{Team.count} teams"
puts "created #{Matchup.count} matchups"
puts "created #{User.count} users"

