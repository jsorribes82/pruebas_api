class Movie < ApplicationRecord
  has_many :libraries
  has_many :seasons, through: :libraries
  has_many :users, through: :libraries

  validates_presence_of :title, :plot

end
