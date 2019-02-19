require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fleet.destroy_all

fleet = Fleet.create(name: "Tellerium Moose")

fleet.ships.create(name: "The Illustrious Atom")
fleet.ships.create(name: "The Sassy Sailor")
fleet.ships.create(name: "S.S. Unsinkable")

ship = fleet.ships.first

ship.duties.create(
  skill: "cooking",
  required_rank: 2,
  task: "We need someone to cook for us!",
  start_date: 12.days.ago.to_date,
  end_date: 5.days.ago.to_date,
)

sailor = ship.duties.first.sailors.create(
  name: "Riki"
)

sailor.ranks.create(
  skill: "cooking",
  level: 1,
)
