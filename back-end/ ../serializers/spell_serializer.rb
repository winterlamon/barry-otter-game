class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :effect, :strength
end
