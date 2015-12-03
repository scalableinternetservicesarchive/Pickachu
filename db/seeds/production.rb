total_num_of_user = 1000

total_num_of_user.times do |user_id|
	user = User.create!(name: "user#{user_id+1}",email: "user#{user_id+1}@test.com", password: '12345678', created_at: '10/10/2015 17:00', updated_at: '10/10/2015 17:00');
	user.save!;
end

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