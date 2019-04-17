class Library < ApplicationRecord
  belongs_to :season
  belongs_to :movie
  belongs_to :user

  validates_presence_of :price, :quality
end
