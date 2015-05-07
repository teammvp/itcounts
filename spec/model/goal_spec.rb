require 'rails_helper'

RSpec.describe Goal, :type => :model do

  it "cannot have duplicate usernames" do
    test_goal     = Goal.create!(title: "title", description: "description", category_id: 1, duration: 1, multiplier: 10, target: 10)
    test_goal_two = Goal.create!(title: "title", description: "descriptiontwo", category_id: 1, duration: 1, multiplier: 10, target: 10)

    test_goal.should be_valid
    test_goal_two.should_not be_valid
  end

end
