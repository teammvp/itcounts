class CategoriesController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
  add_breadcrumb "Category", :categories_path
 
  # display all the current categories
  def index
    @categories = Category.all()
  end

  # list all goals that belong to a particular category
  def show
    add_breadcrumb params[:category], :single_category_path
    
    # return all the goals associated with the category
    @category = Category.find_by(:title => params[:category])
    @goals = @category.goals
    
  end

  def contact    
  end


end
