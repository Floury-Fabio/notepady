class Tag < ApplicationRecord
  has_many :noteTags
  has_many :notes, through: :noteTags
end
