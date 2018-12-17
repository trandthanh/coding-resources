class Topic < ApplicationRecord
  belongs_to :theme
  has_many :tutorials
end
