class Author < ApplicationRecord
  has_many :lessons
  has_many :tutorials
end
