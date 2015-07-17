# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Game.delete_all

# games = Game.create([
# {
# "title": "SCP - Containment Breach",
# "image": "https://upload.wikimedia.org/wikipedia/commons/2/25/SCP_Containment_Breach_logo.jpg",
# "desc": "SCP - Containment Breach is a free survival horror game based on the creepypasta stories of The SCP Foundation. As you enter the containment chamber for testing, the power systems fail, and you are left alone against an enemy with no physical weapons. Your only self-defense is seeing...",
# "mode": "Single Player",
# "genre": "Adventure",
# "download": "http://www.scpcbgame.com/"
# }
# ])

User.delete_all

@user_one = User.create( username: "SpaceMarineofLove", password: "niccage", email: "pwhite007@icloud.com" )
