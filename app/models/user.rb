class User < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :watched_movies, dependent: :destroy
  # ***** 以下を追加 *****
  # user.liked_messages で user が「いいね!」しているメッセージ一覧が取得できるようになる
  has_many :learned_movies, through: :watched_movies, source: :movie
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
