FactoryBot.define do
  factory :wiki do
		title "Intelligent topic"
		body "Super intelligent explanation"
		private false
		user
	end

	factory :user do
		sequence(:email){ |n| "user#{n}@factory.com" }
		password 'helloworld'
		role 'standard'
		after(:create) { |u| u.confirm }
	end
end