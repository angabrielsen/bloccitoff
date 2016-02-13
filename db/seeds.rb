require "faker"

ashton = User.create!(
	name: 'backl_ash',
	email: 'ashton@example.com',
	password: 'helloworld'
)

10.times do
	Item.create!(
		user: User.first,
		name: Faker::Lorem.sentence
	)
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} to-do items created"