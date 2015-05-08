require 'rails_helper'

RSpec.describe Category, :type => :model do

  it "cannot have duplicate titles" do
    test_category = Category.create!(title: "test", description: "test desc.", image_url: "http://upload.wikimedia.org/wikipedia/commons/c/c4/PM5544_with_non-PAL_signals.png")
    test_category_two = Category.create!(title: "test", description: "test two desc.", image_url: "http://upload.wikimedia.org/wikipedia/commons/c/c4/PM5544_with_non-PAL_signals.png")

    expect(test_category_two).to_be !valid
  end

end
