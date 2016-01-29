# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#User: :location, :acceptable_bitterness, :plugs_required, :needs_gluten_free_option, :requires_wifi

user = User.create!(location: "London", acceptable_bitterness: 5, plugs_required: 2, needs_gluten_free_option: true, requires_wifi: true)

#Cafe :location, :bitterness, :plugs_available, :has_gluten_free_option, :has_wifi

passing_cafe = Cafay.create!(location: "London", bitterness: 4, plugs_available: 5, has_gluten_free_option: true, has_wifi: true)

failing_cafe = Cafay.create!(location: "London", bitterness: 4, plugs_available: 5, has_gluten_free_option: true, has_wifi: false)