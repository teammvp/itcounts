class ChangeGoalsColumnName < ActiveRecord::Migration
  def change
    rename_column :goals, :catagory_id, :category_id
  end
end
