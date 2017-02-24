FactoryGirl.define do
  factory :delegado do
    nome { Faker::Name.name }
    email { Faker::Internet.email }
    local { Faker::Address.city }
    id_wca { Faker::Number.number(4) + Faker::Lorem.characters(4).upcase + Faker::Number.number(2) }
  end
end
