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
