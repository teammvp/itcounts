class AddFieldsToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :multiplier, :integer
    add_column :goals, :target, :integer
  end
end
