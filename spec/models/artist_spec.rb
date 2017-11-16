require 'rails_helper'

describe Artist do
  it { should validate_presence_of :title}
  it { should validate_presence_of :genre_id}
  it { should validate_uniqueness_of :title}
  it { should belong_to :genre }
  it { should have_many :albums }
end
