class AddDurationColumnToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :duration, :string
  end
end
