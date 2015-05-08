require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'builds a valid user' do 
    test_user = User.create!(username: "testing", email: "test@testing.com", password: "123")
    
    expect(test_user.username == "testing")
    expect(test_user.username == "test@testing.com")
    expect(test_user.password_digest != "123")
    expect(test_user.password_digest.length == 60)
  end

  it "is associated with a goal" do
    test_user = User.create!(username: "testing", email: "test@testing.com", password: "123")
    test_goal = Goal.create!(title: "title", description: "description", category_id: 1, duration: 1, multiplier: 10, target: 10)
    test_user_goal = UserGoal.create!(user_id: test_user.id, goal_id: test_goal.id)

    expect(test_user.goals.length == 1)
  end

  it "can authenticate a user via password" do
    test_user = User.create!(username: "testing", email: "test@testing.com", password: "123")
    auth_user = User.authenticate("test@testing.com", "123")
    
    expect(auth_user == test_user)
  end

  it "can authenticate a user via password" do
    test_user = User.create!(username: "testing", email: "test@testing.com", password: "123")
    auth_user = User.authenticate("testing", "123")
    
    expct(auth_user == test_user)
  end

  it "cannot have duplicate usernames" do
    User.create!(username: "testing", email: "test@testing.com", password: "123")
    dupe_user = User.new(username: "testingTwo", email: "test@testing.com", password: "123")

    expect( dupe_user.valid? ) == false
  end

  it "cannot have duplicate email addresses" do
    User.create!(username: "testing", email: "testtwo@testing.com", password: "123")
    dupe_user = User.new(username: "testing", email: "test@testing.com", password: "123")
    expect( dupe_user.valid? ) == false
  end

end
