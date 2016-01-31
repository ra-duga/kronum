# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Developer.delete_all

Developer.create!(name: 'О2 Development',
                  decription:
                  %{<p>Не самый надежный застройщик</p>},
                  logo_url: 'test_logo.jpg')

Developer.create!(name: 'Ленспецсму',
                  decription:
                  %{<p>Не самый надежный застройщик</p>},
                  logo_url: 'test_logo.jpg')

