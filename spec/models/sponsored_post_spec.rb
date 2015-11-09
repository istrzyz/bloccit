require 'rails_helper'
include RandomData


RSpec.describe SponsoredPost, type: :model do
  describe "attributes" do
    let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
    let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
    let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

  end
  pending "add some examples to (or delete) #{__FILE__}"
end
