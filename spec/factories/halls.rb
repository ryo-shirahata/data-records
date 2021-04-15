FactoryBot.define do
  factory :hall do

    name      {"test"}
    machine   {"test"}
    data      {"test"}
    association :user
  end
end
