FactoryGirl.define do
  factory :delegado do
    nome { Faker::Name.name }
    email { Faker::Internet.email }
    local { Faker::Address.city }
    id_wca { Faker::Number.number(4) + ('A'..'Z').to_a.shuffle.join[0..3] + Faker::Number.number(2) }
  end
end
