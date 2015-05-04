# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Goal.create([{ title: 'water', description: 'water saving description',  duration: '1', category_id: 1 }]);
Goal.create([{ title: 'carbon', description: 'carbon saving description', duration: '60', category_id: 2 }]);
Goal.create([{ title: 'power',description: 'power saving description', duration: '20', category_id: 3 }]);
Goal.create([{ title: 'recycle',description: 'recycling saving description', duration: '2', category_id: 4 }]);

Category.create([{ title: 'water',description: 'water saving description' }]);
Category.create([{ title: 'carbon',description: 'carbon saving description' }]);
Category.create([{ title: 'power',description: 'power saving description' }]);
Category.create([{ title: 'recycle',description: 'recycling saving description' }]);

Fact.create([{description: '1000 litres saved', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '100 tonnes of CO2 saved', category_id: 2, icon: '', background_image: '' }]);
Fact.create([{description: '1200kw reduction in consumption per day', category_id: 3, icon: '', background_image: '' }]);
Fact.create([{description: 'recycling savings of 1 tonne', category_id: 4, icon: '', background_image: '' }]);

User.create([{ username: 'JCLee', token: '', email: 'us@us.com' }]);
User.create([{ username: 'JWolff', token: '', email: 'some@some.com' }]);
User.create([{ username: 'LShillabeer', token: '', email: 'who@who.com' }]);
User.create([{ username: 'AllOfUs', token: '', email: 'where@where.com' }]);
