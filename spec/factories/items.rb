FactoryGirl.define do
  factory :item do
    name Faker::Name.name
	user
  end
end
