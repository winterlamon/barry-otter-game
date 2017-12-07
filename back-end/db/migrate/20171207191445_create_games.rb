class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :rounds
      t.string :character_id
      t.timestamps
    end
  end
end
