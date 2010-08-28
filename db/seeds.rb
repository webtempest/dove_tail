# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

bodie = User.create(email: "bodie@dovetailtimbers.com", password: "frisbee")
root_link = Link.create(title: "root", parent_id: 0, page_id: 1)
home_link = Link.create(title: "Home", parent_id: 1, page_id: 1)
home = Page.create(title: "home", body: "<p>Site currently under construction...check back soon!</p>")
