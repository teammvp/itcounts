# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Goal.create([{ title: 'shower-timer', description: 'Set phone timer to 5 minutes while showering.',  duration: 1, multiplier: 60, target: 10, category_id: 1 }]);
Goal.create([{ title: 'teeth-brushing', description: 'Turn off the tap while brushing your teeth.', duration:1, multiplier: 12, target: 100, category_id: 1 }])
Goal.create([{ title: 'low-flow', description: 'Convert your "high flow" shower head to "low flow".',  duration: 1, multiplier: 5, target: 40, category_id: 1 }]);
Goal.create([{ title: 'leaky-taps', description: 'Fix a leaky tap.',  duration: 30, multiplier: 200, target: 100, category_id: 1 }]);

Goal.create([{ title: 'dont-drive', description: "Use public transport or cycle today.", duration: 1, multiplier: 5, target: 100, category_id: 2 }]);
Goal.create([{ title: 'heater-use', description: "Turn central heating down 2 degrees.", duration: 1, multiplier: 5, target: 100, category_id: 2 }]);
Goal.create([{ title: 'close-doors-and-windows', description: "Close doors and windows when heater is on.", duration: 1, multiplier: 5, target: 100, category_id: 2 }]);
Goal.create([{ title: 'switch-provider', description: "Switch to a green energy-provider.", duration: 1, multiplier: 5, target: 100, category_id: 2 }]);

Goal.create([{ title: 'energy-savings', description: 'Start changing to energy efficient bulbs.', duration: 20, multiplier: 5, target: 50, category_id: 3 }]);
Goal.create([{ title: 'lights-off', description: 'Turn off a light that shouldn\'t be on.', duration: 20, multiplier: 5, target: 50, category_id: 3 }]);
Goal.create([{ title: 'unplug-appliance', description: 'Unplug microwave when not in use.', duration: 20, multiplier: 5, target: 50, category_id: 3 }]);
Goal.create([{ title: 'switch-off-computer', description: 'Shut down your computer when finished using it.', duration: 20, multiplier: 5, target: 50, category_id: 3 }]);

Goal.create([{ title: 'recycle-paper',description: 'Recycle something you would have thrown out.', duration: 2, multiplier: 5, target: 30, category_id: 4 }]);
Goal.create([{ title: 'save-cooking-water',description: 'Save the water you use while cooking to water plants.', duration: 2, multiplier: 5, target: 30, category_id: 4 }]);
Goal.create([{ title: 'save-from-tap',description: 'Fill bucket with the cold water before the hot water begins!', duration: 2, multiplier: 5, target: 50, category_id: 4 }]);

Category.create([{ title: 'water',description: 'water saving description', image_url: 'category_icons/water.svg' }]);
Category.create([{ title: 'carbon',description: 'carbon saving description', image_url: 'category_icons/footprint.svg' }]);
Category.create([{ title: 'power',description: 'power saving description', image_url: 'category_icons/energy.svg' }]);
Category.create([{ title: 'recycle',description: 'recycling saving description', image_url: 'category_icons/plants.svg' }]);

#Water
Fact.create([{description: '125 users saved 1000 litres of water today', category_id: 1, icon: '', background_image: '' }]);
Fact.create([{description: '500 users saved 4000 litres of water today', category_id: 1, icon: '', background_image: '' }]);

# Fact.create([{description: '1000 litres saved', category_id: 1, icon: '', background_image: '' }]);
# Fact.create([{description: '8 litres of water every minute saved in a shower', category_id: 1, icon: '', background_image: '' }]);
# Fact.create([{description: 'Low flow shower head uses 33% less water than high flow!', category_id: 1, icon: '', background_image: '' }]);
# Fact.create([{description: '2 litres per day of water saved from a leaky tap!', category_id: 1, icon: '', background_image: '' }]);
#power
Fact.create([{description: '1200 users saved 448kilowatts for today', category_id: 3, icon: '', background_image: '' }]);
Fact.create([{description: '1200 users saved a total of $716 just for today', category_id: 3, icon: '', background_image: '' }]);
# Fact.create([{description: '1200kw reduction in consumption per day', category_id: 3, icon: '', background_image: '' }]);
# Fact.create([{description: 'Power costs approximately 10c per kilowatt hour, so switch off!', category_id: 4, icon: '', background_image: '' }]);
#carbon
Fact.create([{description: '150 users saved 2550 trees this year!', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: '80 users saved 4 tonnes of carbon this year', category_id: 4, icon: '', background_image: '' }]);
# Fact.create([{description: 'Each tonne of paper that is recycled saves: almost 13 trees!', category_id: 4, icon: '', background_image: '' }]);
# Fact.create([{description: '100 tonnes of CO2 saved', category_id: 2, icon: '', background_image: '' }]);
#recycle
Fact.create([{description: '2500 users saved 1 tonne of methane from entering the atmosphere!', category_id: 4, icon: '', background_image: '' }]);
Fact.create([{description: '950 users saved 12,350 trees this year!', category_id: 4, icon: '', background_image: '' }]);

User.create([{ username: 'JCLee', password: '123', email: 'us@us.com', password_salt: 'abcde' }]);
User.create([{ username: 'JWolff', password: '123', email: 'some@some.com', password_salt: 'abcde' }]);
User.create([{ username: 'LShillabeer', password: '123', email: 'who@who.com', password_salt: 'abcde' }]);
User.create([{ username: 'AllOfUs', password: '123', email: 'where@where.com', password_salt: 'abcde' }]);
User.create([{ username: 'admin', password: 'admin', email: 'admin@itcounts.com', password_salt: 'abcde' }]);

UserGoal.create([{user_id: 1, goal_id: 1}, {user_id:1, goal_id: 2}]);
UserGoal.create([{user_id: 2, goal_id: 1}, {user_id:2, goal_id: 3}, {user_id:2, goal_id: 4}]);
UserGoal.create([{user_id: 3, goal_id: 1}]);
UserGoal.create([{user_id: 4, goal_id: 1}, {user_id:4, goal_id: 2}, {user_id:4, goal_id: 3}, {user_id:4, goal_id: 4}]);
