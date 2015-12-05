class Rating < ActiveRecord::Base

  belongs_to :rateable, polymorphic: true
  belongs_to :severity

  has_many :severity
  has_many :topics, through: :severity, source: :rateable, source_type: :Topic
  has_many :posts, through: :severity, source: :rateable, source_type: :Post

  enum severity: [ :PG, :PG13, :R ]

  def self.update_rating(rating_string)


end
