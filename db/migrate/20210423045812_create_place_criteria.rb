class CreatePlaceCriteria < ActiveRecord::Migration[6.1]
  def change
    create_table :place_criteria do |t|
      t.references :place, null: false, foreign_key: true
      t.references :criteria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
