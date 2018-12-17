class Tutorial < ApplicationRecord
  belongs_to :author
  belongs_to :language
  belongs_to :topic
end
