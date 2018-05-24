FactoryBot.define do
  factory :wiki do
    title "New Wiki"
		body  "New wiki body"
		private false
		user
	end

	factory :user do
		sequence(:email){ |n| "user#{n}@factory.com" }
		password 'helloworld'
		after(:create) { |u| u.confirm }
	end
end