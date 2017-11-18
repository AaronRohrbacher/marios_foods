require 'rails_helper'

describe "the delete a review process" do
  it "deletes a review" do
    new_product = Product.create(name: 'Cheap White People Food', cost: '10', country: 'United States' )
    new_product.reviews.create(:author => 'Adam Notbrown', content_body: "This food is simply delicious, and within my middle-class-white-guy budget.", rating: '5')
    visit product_path(new_product)
    expect(page).to have_content 'Adam Notbrown'
    click_link 'Delete'
    expect(page).not_to have_content 'Adam Notbrown'
  end
end
