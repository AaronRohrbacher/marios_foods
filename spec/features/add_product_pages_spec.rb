require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Beans'
    fill_in 'Country', :with => 'usa'
    fill_in 'Cost', :with => '1'
    click_on 'Create Product'
    expect(page).to have_content 'Beans'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
