class GoalsController < ApplicationController

  def show
    # return a single goals information
    @goal = Goal.find_by(:title => params[:goal_title])
  end

end
