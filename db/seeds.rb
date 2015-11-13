# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pickup.delete_all;

Pickup.create([uid: 1000,  name: 'iPhone', long: -118.3, lat: 33.98, price:9999.99, description: 'Legit iPhone 10000']);
Pickup.create([uid: 1111,  name: 'Halo', long: -118.4, lat: 34.05, price:9999.99, description:'Legendary Game Halo']);
Pickup.create([uid: 2222,  name: 'Xbox', long: -118.4, lat: 34.06, price:9999.99, description:'Brand New XBOX TWO']);
Pickup.create([uid: 4444,  name: 'Final Fantasy', long: -118.4, lat: 33.94, price:9999.99, description:'Final Fantasy']);
Pickup.create([uid: 0,  name: 'Android phone', long: -118.40, lat: 32.94, price:9999.99, description:'New android phone contact me at: 222-222-2222']);
Pickup.create([uid: 1,  name: 'Lakers Game ticket', long: -118.40, lat: 34.94, price:9999.99, description:'Selling tickets for Lakers Game tonight']);
Pickup.create([uid: 2,  name: 'SAT tutoring', long: -117.40, lat: 33.24, price:9999.99, description:'SAT Tutoring']);
Pickup.create([uid: 3,  name: 'Alcohols', long: -118.90, lat: 33.14, price:9999.99, description:'I sell alcohols']);
Pickup.create([uid: 4,  name: 'Jewelry', long: -118.50, lat: 33.34, price:9999.99, description:'Jewelry']);
Pickup.create([uid: 5,  name: 'Coffeemakers', long: -118.30, lat: 33.54, price:9999.99, description:'Selling coffeemakers']);
Pickup.create([uid: 6,  name: 'Fridge', long: -118.48, lat: 34.94, price:9999.99, description:'Unused fridge']);
