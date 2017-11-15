class Album < ApplicationRecord
  belongs_to :artists
  has_many :reviews
  acts_as_votable
  validates :title, :presence => true
  validates :artist_id, :presence => true
  validates :timestamp, :presence => true
  validates :ratings, :presence => true
end
