class CategoriesController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
  add_breadcrumb "Category", :categories_path
  def index
    # display all the current categories
    @categories = Category.all()
  end

  def show
    add_breadcrumb params[:category], :single_category_path
    # return all the goals associated with the category
    @goals = Category.find_by(:title => params[:category]).goals
    @category = Category.find_by(:title => params[:category])
  end

end
