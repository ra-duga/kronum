# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Developer.delete_all

Developer.create!(name: 'О2 Development',
                  description:
                  %{<p>Не самый надежный застройщик</p>},
                  logo_url: 'test_logo.jpg',
                  adress: '')

Developer.create!(name: 'Ленспецсму',
                  description:
                  %{<p>Не самый надежный застройщик</p>},
                  logo_url: 'test_logo.jpg',
                  adress: '')

Developer.create!(name: 'Setl City',
                  description:
                  %{<p>Девелоперская компания "SETL CITY" благодаря многолетнему опыту работы уже давно заняла лидирующие позиции в инвестиционно-строительном сегменте российского рынка. </p>},
                  logo_url: 'test_logo.jpg',
                  adress: 'Санкт-Петербург, Московский пр., 212.')

Developer.create!(name: 'ЦДС',
                  description:
                  %{<p>Строительная компания "ЦДС" сегодня по праву считается одним из крупнейших застройщиков Санкт-Петербурга. За долгие годы работы застройщик успел пройти путь от небольшой строительной компании,... </p>},
                  logo_url: 'test_logo.jpg',
                  adress: 'Санкт-Петербург, пр. Добролюбова 8 А')

