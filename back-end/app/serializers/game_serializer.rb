class GameSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :created_at
end
