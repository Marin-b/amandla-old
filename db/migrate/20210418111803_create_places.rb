class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :address
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :story
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
