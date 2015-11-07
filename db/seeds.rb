# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pickup.delete_all;

<<<<<<< HEAD
Pickup.delete_all;

Pickup.create([obj_type: '0', uid: '1000', user_id: '1', price:'9999.99', name: 'iPhone', long: '-118', lat: '34', description: 'Legit iPhone 10000']);
Pickup.create([obj_type: '1', uid: '1111', user_id: '1', price:'9999.99', name: 'Halo', long: '-118.44', lat: '34.05', description:'Legendary Game Halo']);
Pickup.create([obj_type: '2', uid: '2222', user_id: '1', price:'9999.99', name: 'Xbox', long: '-118.445181', lat: '34.068921', description:'Brand New XBOX TWO']);
Pickup.create([obj_type: '3', uid: '4444', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.408530', lat: '33.941589', description:'Final Fantasy']);
Pickup.create([obj_type: '3', uid: '0', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.408530', lat: '32.941589', description:'New android phone contact me at: 222-222-2222']);
Pickup.create([obj_type: '3', uid: '1', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.408530', lat: '34.941589', description:'Selling tickets for Lakers Game tonight']);
Pickup.create([obj_type: '3', uid: '2', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-117.408530', lat: '33.241589', description:'SAT Tutoring']);
Pickup.create([obj_type: '3', uid: '3', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.908530', lat: '33.141589', description:'I sell alcohols']);
Pickup.create([obj_type: '3', uid: '4', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.508530', lat: '33.341589', description:'Jewelry']);
Pickup.create([obj_type: '3', uid: '5', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.308530', lat: '33.541589', description:'Selling coffeemakers']);
Pickup.create([obj_type: '3', uid: '6', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.488530', lat: '34.941589', description:'Unused fridge']);
Pickup.create([obj_type: '3', uid: '7', user_id: '1', price:'9999.99', name: 'Final Fantasy', long: '-118.208530', lat: '33.041589', description:'Unused basketball']);
=======
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
Pickup.create([uid: 7,  name: 'basketball', long: -118.20, lat: 33.04, price:9999.99, description:'Unused basketball']);
>>>>>>> demundo-dev
