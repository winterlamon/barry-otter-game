class AddImageUrlToChar < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :image_url, :string
  end
end
