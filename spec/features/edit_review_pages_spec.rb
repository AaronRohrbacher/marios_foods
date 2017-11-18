require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    new_product = Product.create(name: 'Hipster Table', cost: '5000', country: 'Seattleland' )
    new_product.reviews.create(:author => 'RegularGuy1', content_body: "This table is terrible. Who the hell can eat on a 1-foot wide table? My floor is covered in food. The chairs that came with the table are higher than the table itself, and it feels like I'm sitting on a baseball bat. This table should cost $10. ", rating: '1', product_id: new_product.id)
    visit product_path(new_product)
    click_link 'Edit'
    fill_in 'Author', :with => 'RegularGuy2'
    click_on 'Update Review'
    expect(page).to have_content 'RegularGuy2'
  end

  it "gives error when no body is entered" do
    new_product = Product.create(name: 'Hipster Table', cost: '5000', country: 'Seattleland' )
    new_product.reviews.create(:author => 'RegularGuy1', content_body: "This table is terrible. Who the hell can eat on a 1-foot wide table? My floor is covered in food. The chairs that came with the table are higher than the table itself, and it feels like I'm sitting on a baseball bat. This table should cost $10. ", rating: '1', product_id: new_product.id)
    visit product_path(new_product)
    click_on 'Edit'
    fill_in 'Content body', :with => ''
    click_on 'Update Review'
    expect(page).to have_content 'errors'
  end
end
