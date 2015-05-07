# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Goal.create([{ title: 'shower-timer', description: 'Use a timer in the shower today!',  duration: 1, multiplier: 5, target: 500, category_id: 1 }]);
Goal.create([{ title: 'reduce-shower', description: 'Reduce your shower time by a minute today!',  duration: 1, multiplier: 5, target: 500, category_id: 1 }]);
Goal.create([{ title: 'low-flow', description: 'Convert your "high flow" shower head to "low flow" this week!',  duration: 1, multiplier: 5, target: 500, category_id: 1 }]);
Goal.create([{ title: 'leaky-taps', description: 'Fix a leaky tap, this week!.',  duration: 30, multiplier: 200, target: 1000, category_id: 1 }]);
Goal.create([{ title: 'dont-drive', description: "Don't drive to work, today, catch a train, tram or ride a bike!", duration: 60, multiplier: 5, target: 500, category_id: 2 }]);
Goal.create([{ title: 'lights-off',description: 'Turn the lights off when not being used, tonight!', duration: 20, multiplier: 5, target: 500, category_id: 3 }]);
Goal.create([{ title: 'sensor-lights',description: 'Install some sensor lights outside or the garage this week!', duration: 20, multiplier: 5, target: 500, category_id: 3 }]);
Goal.create([{ title: 'recycle-paper',description: 'Recycle your newspapers everyday!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);
Goal.create([{ title: 'save-paper',description: 'Subscribe to digital editions of the newspaper today!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);
Goal.create([{ title: 'recycle-food',description: 'Put your food scraps into compost everyday!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);
Goal.create([{ title: 'recycle-water',description: 'Drain shower water into the gardens everyday!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);
Goal.create([{ title: 'save-from-tap',description: 'Fill bucket with the cold water before the hot water begins!', duration: 2, multiplier: 5, target: 500, category_id: 4 }]);

Category.create([{ title: 'water',description: 'water saving description', image_url: 'category_icons/water.svg' }]);
Category.create([{ title: 'carbon',description: 'carbon saving description', image_url: 'category_icons/footprint.svg' }]);
Category.create([{ title: 'power',description: 'power saving description', image_url: 'category_icons/energy.svg' }]);
Category.create([{ title: 'recycle',description: 'recycling saving description', image_url: 'category_icons/plants.svg' }]);

Fact.create([{description: '1000 litres saved', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '8 litres of water every minute saved in a shower', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: 'Low flow shower head uses 33% less water than high flow!', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '2 litres per day of water saved from a leaky tap!', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '100 tonnes of CO2 saved', category_id: 2, icon: '', background_image: '' }]);
Fact.create([{description: '1200kw reduction in consumption per day', category_id: 3, icon: '', background_image: '' }]);
Fact.create([{description: 'recycling savings of 1 tonne', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: 'Each tonne of paper that is recycled saves: almost 13 trees!', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: '17 trees can absorb the carbon dioxide emitted from your car each year!', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: 'Power costs approximately 10c per kilowatt hour, so switch off!', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: 'Composting food scraps reduces the methane levels in the atmosphere!', category_id: 4, icon: '', background_image: '' }]);

User.create([{ username: 'JCLee', password: '123', email: 'us@us.com', password_salt: 'abcde' }]);
User.create([{ username: 'JWolff', password: '123', email: 'some@some.com', password_salt: 'abcde' }]);
User.create([{ username: 'LShillabeer', password: '123', email: 'who@who.com', password_salt: 'abcde' }]);
User.create([{ username: 'AllOfUs', password: '123', email: 'where@where.com', password_salt: 'abcde' }]);

UserGoal.create([{user_id: 1, goal_id: 1}, {user_id:1, goal_id: 2}]);
UserGoal.create([{user_id: 2, goal_id: 1}, {user_id:2, goal_id: 3}, {user_id:2, goal_id: 4}]);
UserGoal.create([{user_id: 3, goal_id: 1}]);
UserGoal.create([{user_id: 4, goal_id: 1}, {user_id:4, goal_id: 2}, {user_id:4, goal_id: 3}, {user_id:4, goal_id: 4}]);
