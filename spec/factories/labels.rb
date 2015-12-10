include RandomData

FactoryGirl.define do
  factory :label do
    body RandomData.random_paragraph
    user
    post
  end
end
