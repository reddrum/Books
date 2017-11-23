FactoryBot.define do
  factory :book do
    title "title"
    description "description"
    author "someone"
    category_id "1"
    user
  end
end