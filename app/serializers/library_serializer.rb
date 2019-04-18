class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :price, :quality, :season_id, :movie_id, :user_id
end