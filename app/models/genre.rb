class Genre < ApplicationRecord
  has_many :artists
  validates :title, :presence => true
  validates :title, :uniqueness => true
end
