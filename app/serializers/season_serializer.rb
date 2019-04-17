class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :num_episode
end