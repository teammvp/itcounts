class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.integer :catagory_id

      t.timestamps null: false
    end
  end
end
