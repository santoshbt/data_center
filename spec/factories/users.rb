FactoryBot.define do
	sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end