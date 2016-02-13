require "faker"

10.times do
	user = User.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(8)
		)
end

10.times do
	Item.create!(
		user: users.sample,
		name: Faker::Lorem.sentence
	)
end

puts "Seed finished"
puts "#{Item.count} to-do items created"