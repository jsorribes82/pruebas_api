class Season < ApplicationRecord
  has_many :episodes, dependent: :destroy
  has_many :libraries
  has_many :movies, through: :libraries
  has_many :users, through: :libraries

  validates_presence_of :title, :plot, :num_episode
end
