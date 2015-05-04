class User < ActiveRecord::Base
  has_many :user_goal
  has_many :goals, :through => :user_goal
end
