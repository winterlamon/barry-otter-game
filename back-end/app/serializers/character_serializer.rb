class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :house, :health, :spells
end
