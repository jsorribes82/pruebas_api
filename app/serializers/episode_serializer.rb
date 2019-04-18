class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :season_id
end