class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites
  has_many :favorite_lessons, through: :favorites, source: :favorited, source_type: 'Lesson'
  has_many :favorite_tutorials, through: :favorites, source: :favorited, source_type: 'Tutorial'
end
