class PagesController < ApplicationController

  def index
    # currently setup to; 
    #   - pick a random category 
    #   - pick a random fact from that category
    #   - make that fact available on the view
    category_count = Category.all().length
    
    # HARD CODED CATEGORY
    random_category = 1
    # random_category = (1..category_count).to_a.sample
    
    facts = Category.find_by(:id => random_category).facts
    facts_found = facts.length
    random_fact = (1..facts_found).to_a.sample
    
    @fact = facts[random_fact - 1]
    
  end

  def about
    # about page (probably static?)
  end

  def api
    # placeholder for API stuffz
  end

end
