require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    product = Product.create(name: 'Smelly Code Spray', cost: '1', country: 'Epicoderica')
    visit product_path(product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'JelloShots420'
    fill_in 'Content body', :with => Faker::Internet.user_name(51...249)
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'JelloShots420'
  end

  it "gives error when no name is entered" do
    product = Product.create(name: 'Smelly Code Spray', cost: '1', country: 'Epicoderica')
    visit product_path(product)
    click_link 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
