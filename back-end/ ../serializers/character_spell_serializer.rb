class CharacterSpellSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :spell_id
end
