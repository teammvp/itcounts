# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Goal.create([{ title: 'shower-timer', description: 'Use a timer in the shower today.',  duration: 1, multiplier: 5, target: 500, category_id: 1 }]);
Goal.create([{ title: 'leaky-taps', description: 'Fix a leaky tap this week.',  duration: 30, multiplier: 200, target: 1000, category_id: 1 }]);
Goal.create([{ title: 'dont-drive', description: "Don't drive to work this week.", duration: 60, multiplier: 5, target: 500, category_id: 2 }]);
Goal.create([{ title: 'lights-off',description: 'Turn the lights off when not being used.', duration: 20, multiplier: 5, target: 500, category_id: 3 }]);
Goal.create([{ title: 'recycle-things',description: 'Recycle everything!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);

Category.create([{ title: 'water',description: 'water saving description', image_url: 'category_icons/water.svg' }]);
Category.create([{ title: 'carbon',description: 'carbon saving description', image_url: 'category_icons/footprint.svg' }]);
Category.create([{ title: 'power',description: 'power saving description', image_url: 'category_icons/energy.svg' }]);
Category.create([{ title: 'recycle',description: 'recycling saving description', image_url: 'category_icons/plants.svg' }]);

Fact.create([{description: '8230 people asdflkasdjf;lkajdsf this month.', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '100 tonnes of CO2 saved', category_id: 2, icon: '', background_image: '' }]);
Fact.create([{description: '1200kw reduction in consumption per day', category_id: 3, icon: '', background_image: '' }]);
Fact.create([{description: 'recycling savings of 1 tonne', category_id: 4, icon: '', background_image: '' }]);

User.create([{ username: 'JCLee', token: '', email: 'us@us.com' }]);
User.create([{ username: 'JWolff', token: '', email: 'some@some.com' }]);
User.create([{ username: 'LShillabeer', token: '', email: 'who@who.com' }]);
User.create([{ username: 'AllOfUs', token: '', email: 'where@where.com' }]);

UserGoal.create([{user_id: 1, goal_id: 1}, {user_id:1, goal_id: 2}]);
UserGoal.create([{user_id: 2, goal_id: 1}, {user_id:2, goal_id: 3}, {user_id:2, goal_id: 4}]);
UserGoal.create([{user_id: 3, goal_id: 1}]);
UserGoal.create([{user_id: 4, goal_id: 1}, {user_id:4, goal_id: 2}, {user_id:4, goal_id: 3}, {user_id:4, goal_id: 4}]);
