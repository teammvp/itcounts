class CategoriesController < ApplicationController

  def index
    # display all the current categories
    @categories = Category.all()
  end

  def show
    # return all the goals associated with the category
    @goals = Category.find_by(:title => params[:category]).goals
    @category = Category.find_by(:title => params[:category])
  end

end
