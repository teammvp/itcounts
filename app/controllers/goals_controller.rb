class GoalsController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
  add_breadcrumb "Category", :categories_path

  # return a single goals information
  def show
    @goal = Goal.find_by(:title => params[:goal_title])
    @category = Category.find(@goal.category_id)
    @goal_details = goal_values_calculate(@goal)

    add_breadcrumb "#{@category.title}", "/#{@category.title}"
    add_breadcrumb params[:goal_title], :single_goal_path
  end

  # updates the content of a specific goal
  def update
    if logged_in?
      goal = Goal.find_by(:title => params[:goal_title])
      make_user_goal(current_user, goal)
      goal_details = goal_values_calculate(goal)
      respond_to do |format|
        format.json { render :json => goal_details }
      end
      
    else
      redirect_to login_path, status: 303
    end
  end

  def goal_values_calculate(goal)
    result = {}
    users_doing_goal = goal.users.length
    result['joined'] = users_doing_goal
    result['completed'] = users_doing_goal
    result['saved'] = users_doing_goal * goal.multiplier
    return result
  end

  def make_user_goal(user, goal)
    if user == nil || goal == nil
      raise "User-Goal Generation Error"
    end
    UserGoal.create(goal_id: goal.id, user_id: user.id)
  end

  private :goal_values_calculate, :make_user_goal
end
