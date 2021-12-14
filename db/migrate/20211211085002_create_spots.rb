class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :post, foreign_kye: true
      
      t.timestamps
    end
  end
end
