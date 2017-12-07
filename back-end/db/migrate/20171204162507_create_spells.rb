class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :category
      t.string :effect
      t.integer :strength
      t.integer :uses_left

      t.timestamps
    end
  end
end
