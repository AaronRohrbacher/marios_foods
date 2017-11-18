require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    new_product = Product.create(name: 'Regular Berries', cost: '1', country: 'Portlandia' )
    visit edit_product_path(new_product)
    fill_in 'Name', :with => 'Funberrys'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Amexida'
    click_on 'Update Product'
    expect(page).to have_content 'Funberrys'
  end

  it "gives error when no name is entered" do
    new_product = Product.create(name: 'Funberrys', cost: '1', country: 'Spanimerada' )
    visit edit_product_path(new_product)
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
