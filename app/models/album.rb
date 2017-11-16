class Album < ApplicationRecord
  belongs_to :artist
  has_many :reviews
  acts_as_votable
  validates :title, :presence => true
  validates :artist_id, :presence => true
end
