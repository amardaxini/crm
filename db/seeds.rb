# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ac= Account.create(:name=>"Railstech",:website=>"http://railstech.com")
user = User.create(:email=>"amardaxini@railtech.com",:password=>"root123",:password_confirmation=>"root123",:account_id=>ac.id)
ac.owner_id=user.id
ac.save

