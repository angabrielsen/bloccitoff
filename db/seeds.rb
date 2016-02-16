require "faker"

ashton = User.create!(
	name: 'backl_ash',
	email: 'ashton@example.com',
	password: 'helloworld'
)

10.times do
	item = Item.create!(
		user: User.first,
		name: Faker::Lorem.sentence
	)

	item.update_attribute(:created_at, "2016-02-08 12:00:00")
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} to-do items created"