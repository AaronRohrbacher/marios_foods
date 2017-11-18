require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    new_product = Product.create(name: 'Multnoma County Sewer Water', cost: '1', country: 'Portlandia' )
    new_product2 = Product.create(name: 'Dr. Feelgoods Brand Lube', cost: '1', country: 'Portlandia' )

    visit product_path(new_product)
    click_on 'Delete Product'
    expect(page).not_to have_content 'Multnoma County Sewer Water'
    expect(page).to have_content 'Dr. Feelgoods Brand Lube'
  end
end
