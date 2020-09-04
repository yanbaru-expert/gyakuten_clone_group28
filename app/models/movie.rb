class Movie < ApplicationRecord
  belongs_to :user
  has_many :watched_movies, dependent: :destroy
  has_many :learned_users, through: :watched_movies, source: :user
  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true, length: { maximum: 300 }
end
