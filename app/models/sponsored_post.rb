class SponsoredPost < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :topic

end
