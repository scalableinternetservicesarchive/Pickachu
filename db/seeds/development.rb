total_num_of_user = 1000

total_num_of_user.times do |user_id|
	user = User.create!(name: "user#{user_id+1}",email: "user#{user_id+1}@test.com", password: '12345678', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
	user.save!;
end

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
Pickup.create([user_id: '1',  name: 'iPhone', lng: '-118.3', lat: '33.98', obj_type:'1', price:'99.99', description: 'Legit iPhone 10000']);
Pickup.create([user_id: '1',  name: 'Halo', lng: '-118.4', lat: '34.05', obj_type:'2', price:'88.99', description:'Legendary Game Halo']);
Pickup.create([user_id: '2',  name: 'Xbox', lng: '-118.4', lat: '34.06', obj_type:'3', price:'199.99', description:'Brand New XBOX TWO']);
Pickup.create([user_id: '4',  name: 'Final Fantasy', lng: '-118.4', lat: '33.94', obj_type:'4', price:'28.88', description:'Final Fantasy']);
Pickup.create([user_id: '2',  name: 'Android phone', lng: '-118.40', lat: '32.94', obj_type:'1', price:'9.99', description:'New android phone contact me at: 222-222-2222']);
Pickup.create([user_id: '1',  name: 'Lakers Game ticket', lng: '-118.40', lat: '34.94', obj_type:'2',price:'399.99', description:'Selling tickets for Lakers Game tonight']);
Pickup.create([user_id: '2',  name: 'SAT tutoring', lng: '-117.40', lat: '33.24', obj_type:'3', price:'99.99',description:'SAT Tutoring']);
Pickup.create([user_id: '3',  name: 'Alcohols', lng: '-118.90', lat: '33.14', obj_type:'4', price:'90.99', description:'I sell alcohols']);
Pickup.create([user_id: '4',  name: 'Jewelry', lng: '-118.50', lat: '33.34', obj_type:'1',price:'77.99', description:'Jewelry']);
Pickup.create([user_id: '2',  name: 'Coffeemakers', lng: '-118.30', lat: '33.54', obj_type:'2', price:'8199.99', description:'Selling coffeemakers']);
Pickup.create([user_id: '1',  name: 'Fridge', lng: '-118.48', lat: '34.94', obj_type:'1', price:'54.99', description:'Unused fridge']);
Pickup.create([user_id: '3',  name: 'basketball', lng: '-118.20', lat: '33.04', obj_type:'4', price:'44.99', description:'Unused basketball']);
