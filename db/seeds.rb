# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)
puts 'DEFAULT USERS'
user = User.create! :name => 'Admin', :email => 'admin@example.com', :password => 'secret', :password_confirmation => 'secret', :slug => 'admin'
puts 'user: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'Pete Argent', :email => 'pete@example.com', :password => 'secret', :password_confirmation => 'secret', :slug => 'second-user'
puts 'user: ' << user2.name
user2.add_role :admin