class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      
      t.integer :user_id
      t.integer :category_id
      t.text :title,   null: false
      t.text :caption, null: false
      t.string :image_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :rate
      
      t.timestamps
    end
  end
end
