class Category < ActiveRecord::Base
  has_many :facts
  has_many :goals
end
