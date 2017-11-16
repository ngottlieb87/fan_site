require 'rails_helper'

describe Genre do
  it { should validate_presence_of :title}
  it { should validate_uniqueness_of :title}
  it { should have_many :artists}
end
