class User < ApplicationRecord
  has_many :libraries
  has_many :movies, through: :libraries
  has_many :seasons, through: :libraries

  validates_presence_of  :email
end
