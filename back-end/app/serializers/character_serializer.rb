class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :house, :health, :spells, :image_url
end
