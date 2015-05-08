class AddUnitNounToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :unit_noun, :string
  end
end
