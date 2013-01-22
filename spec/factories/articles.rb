# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "My Article"
    blurb { Faker::Lorem.sentences(2).join(". ") }
    body { Faker::Lorem.paragraph }
    published_on { Time.now }
    views 1
    user
  end
end
