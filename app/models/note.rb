class Note < ApplicationRecord
  belongs_to :notepad

  has_many :noteTags
  has_many :tags, through: :noteTags
end
