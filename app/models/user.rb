class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorite_lessons
  has_many :favorite_tutorials
  has_many :favorites, through: :favorite_lessons, source: :lesson
  has_many :favorited, through: :favorite_tutorials, source: :tutorial

  validates :username, presence: true, uniqueness: true
end
