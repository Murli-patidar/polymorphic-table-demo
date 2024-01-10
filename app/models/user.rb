class User < ApplicationRecord
  has_many :instrument_posts
  has_many :comments
  # alias association for user who submitted the review
  has_many :submitted_reviews, class_name: "Review", foreign_key: :user_id
  # association for user, instrument_post and comment that has the review
  has_many :reviews, as: :reviewable
end
