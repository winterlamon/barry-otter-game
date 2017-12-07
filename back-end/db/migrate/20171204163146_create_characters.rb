class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :house
      t.integer :health
      t.string :image_url

      t.timestamps
    end
  end
end
