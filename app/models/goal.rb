class Goal < ActiveRecord::Base
  belongs_to :category
  has_many :user_goal
  has_many :users, :through => :user_goal
end
