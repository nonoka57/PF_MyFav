class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.integer :user_id
      t.integer :category_id
      t.text :title,   null: false
      t.text :caption, null: false
      t.string :image_id
      t.float :rate

      t.timestamps
    end
  end
end
