class AwsText < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :contents, presence: true, length: { maximum: 500 }
end
