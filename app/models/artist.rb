class Artist < ApplicationRecord
  belongs_to :genre
  has_many :albums
  has_many :reviews
  acts_as_votable
  validates :title, :presence => true
  validates :title, :uniqueness => true
  validates :genre_id, :presence => true
end
