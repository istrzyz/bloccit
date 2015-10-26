include RandomData

50.times do

  Post.create!(

    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Advertisement.create!(
  title: 'Advertisements'
  copy: "New"
  price: 25
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
