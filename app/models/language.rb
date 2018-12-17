class Language < ApplicationRecord
  has_many :lessons
  has_many :tutorials
end
