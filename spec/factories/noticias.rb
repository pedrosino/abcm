FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence }
    texto { Faker::Lorem.paragraph }
  end
end
