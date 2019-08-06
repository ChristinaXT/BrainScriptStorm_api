# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create(name: "Christina", username: "christinaxt", password: "password")
poughkeepsie = Location.create(city: "Poughkeepsie", state: "New York", country: "USA")
hello_again = Title.create(name: "Hello Again")
christina = User.first
christina.stories.create
synopsis = Story.create(synopsis: "Brenda ran away from home when she was 15. After a long battle with evil forces and meeting some helpful characters a long the way, she found her way home again")
brenda = Character.create(name: "Brenda")
character_background = Given_circumstances.create(character_background: "Brenda comes from a small town Poughkeepsie and feels trapped by her very religious parents. She also had a brother who died young. She studied ballet. She loves Pizza")
time_period = Epoch.create(time_period: "present day")
description = Inciting_incident.create(description: "Brenda came home from school and saw her father hit her mother and her mother shot him in the arm")
