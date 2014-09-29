# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brandon = User.create(screen_name: "Brandon", email: "bh@foo.com", password: "password1234", password_confirmation: "password1234", status: "available")
peter = User.create(screen_name: "Peter", email: "pg@foo.com", password: "password1234", password_confirmation: "password1234", status: "available")
william = User.create(screen_name: "William", email: "wl@foo.com", password: "password1234", password_confirmation: "password1234", status: "unavailable")
jessica = User.create(screen_name: "Jessica", email: "jr@foo.com", password: "password1234", password_confirmation: "password1234", status: "available")
vanessa = User.create(screen_name: "Vanessa", email: "vd@foo.com", password: "password1234", password_confirmation: "password1234", status: "unavailable")

brandon.friends << [peter, william, jessica, vanessa]
peter.friends << [brandon]
william.friends << [brandon, vanessa]
jessica.friends << [brandon, vanessa]
vanessa.friends << [brandon, william, jessica]