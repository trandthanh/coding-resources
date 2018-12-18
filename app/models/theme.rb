class Theme < ApplicationRecord
  has_many :topics
  has_many :tutorials, through: :topics
end
