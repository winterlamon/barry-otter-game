class CreateCharacterSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :character_spells do |t|
      t.references :character, foreign_key: true
      t.references :spell, foreign_key: true

      t.timestamps
    end
  end
end
