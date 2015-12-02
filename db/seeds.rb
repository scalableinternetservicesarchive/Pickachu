<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alngside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all;
u = User.create!(name: 'Adm',email: 'pickadm@pickachu.com', password: 'thisisadm', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;
u = User.create!(name: 'Twu',email: 'twu@pickachu.com', password: '123456789', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;
u = User.create!(name: 'Nick',email: 'nick@pickachu.com', password: '123456789', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;
u = User.create!(name: 'Yao',email: 'yao@pickachu.com', password: '123456789', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;
u = User.create!(name: 'Pp',email: 'pp@pickachu.com', password: '123456789', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;
u = User.create!(name: 'test',email: 'test@gmail.com', password: '12345678', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
u.save!;

# 1.upto(1000) do |i|
# 	u = User.create!(name: "user#{i}",email: "user#{i}@test.com", password: '12345678', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
# 	u.save!;
# end

Pickup.delete_all;

1000.times do |i|
	puts('value of i is: ', i)
	pickup=Pickup.new
	pickup.user_id = '1'
	pickup.name = 'Best iPhoen Ever' + i.to_s
	pickup.lng = (-110-rand(9)).to_f
	puts(pickup.lng)
	pickup.lat = (32+rand(4)).to_f
	puts(pickup.lat)
	pickup.obj_type = '1'
	pickup.price = rand(999).to_f
	puts(pickup.price)
	pickup.description = 'legit best iphone 6s 666'
	# pickup = Pickup.create([user_id: '1',  name: 'Best iPhone ever', lng: '-118.#{i}', lat: '33.#{i}', obj_type:'1', price:'99.55', description: 'Legit iPhone 666']);
	pickup.save;
end

# Pickup.create([user_id: '1',  name: 'iPhone', lng: '-118.3', lat: '33.98', obj_type:'1', price:'99.99', description: 'Legit iPhone 10000']);


# Pickup.create([user_id: '1',  name: 'Halo', lng: '-118.4', lat: '34.05', obj_type:'2', price:'88.99', description:'Legendary Game Halo']);
# Pickup.create([user_id: '2',  name: 'Xbox', lng: '-118.4', lat: '34.06', obj_type:'3', price:'199.99', description:'Brand New XBOX TWO']);
# Pickup.create([user_id: '4',  name: 'Final Fantasy', lng: '-118.4', lat: '33.94', obj_type:'4', price:'28.88', description:'Final Fantasy']);
# Pickup.create([user_id: '2',  name: 'Android phone', lng: '-118.40', lat: '32.94', obj_type:'1', price:'9.99', description:'New android phone contact me at: 222-222-2222']);
# Pickup.create([user_id: '1',  name: 'Lakers Game ticket', lng: '-118.40', lat: '34.94', obj_type:'2',price:'399.99', description:'Selling tickets for Lakers Game tonight']);
# Pickup.create([user_id: '2',  name: 'SAT tutoring', lng: '-117.40', lat: '33.24', obj_type:'3', price:'99.99',description:'SAT Tutoring']);
# Pickup.create([user_id: '3',  name: 'Alcohols', lng: '-118.90', lat: '33.14', obj_type:'4', price:'90.99', description:'I sell alcohols']);
# Pickup.create([user_id: '4',  name: 'Jewelry', lng: '-118.50', lat: '33.34', obj_type:'1',price:'77.99', description:'Jewelry']);
# Pickup.create([user_id: '2',  name: 'Coffeemakers', lng: '-118.30', lat: '33.54', obj_type:'2', price:'8199.99', description:'Selling coffeemakers']);
# Pickup.create([user_id: '1',  name: 'Fridge', lng: '-118.48', lat: '34.94', obj_type:'1', price:'54.99', description:'Unused fridge']);
# Pickup.create([user_id: '3',  name: 'basketball', lng: '-118.20', lat: '33.04', obj_type:'4', price:'44.99', description:'Unused basketball']);
begin
	seed_start = SeedMutex.create(status: true)
rescue ActiveRecord::RecordNotUnique
		if SeedMutex.exists?(status: false)
			puts 'Seed planted'
		else
			puts 'Seed is being executed by another instance'
		end
	else
		load(Rails.root.join('db', 'seeds', "#{Rails.env.downcase}.rb"))
		seed_done = SeedMutex.create(status: false)
		puts 'Seed is done'
	end
