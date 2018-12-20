class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorite_lessons
  has_many :favorites, through: :favorite_lessons, source: :lesson

  validates :username, presence: true, uniqueness: true
end
