include RandomData

FactoryGirl.define do
  factory :vote do
    body RandomData.random_paragraph
    user
    post
  end
end
