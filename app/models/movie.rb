class Movie < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true, length: { maximum: 300 }
  validates :contents, presence: true, length: { maximum: 500 }
end
