# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1=User.new
user1.photo_url = "https://lh3.googleusercontent.com/-GKHk18bnh1s/UNDLsooLRsI/AAAAAAAAG2w/BS_Qhq4S6mM/s586/IMG_5157.JPG"
user1.email = "arif.poonawala@gmail.com"
user1.password = "hello123"
user1.fname ="Arif"
user1.lname = "Poonawala"
user1.save


