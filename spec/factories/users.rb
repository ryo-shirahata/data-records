FactoryBot.define do
  factory :user do
    japanese_user = Gimei.name

    email      {Faker::Internet.free_email}
    password   { '1a' + Faker::Internet.password(min_length: 6) }
    nickname   {Faker::Name.initials(number: 2)}
  end
end
