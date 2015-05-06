class GoalsController < ApplicationController
  add_breadcrumb "Category", :categories_path
  #add_breadcrumb params[:category], :single_category_path

  def show
    # return a single goals information
    @goal = Goal.find_by(:title => params[:goal_title])
    @category = Category.find(@goal.category_id)
    add_breadcrumb "#{@category.title}", "/#{@category.title}"
    add_breadcrumb params[:goal_title], :single_goal_path
  end

end
