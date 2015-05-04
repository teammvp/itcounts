class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.string :description
      t.integer :category_id
      t.string :icon
      t.string :background_image

      t.timestamps null: false
    end
  end
end
