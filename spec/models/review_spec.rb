require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :rating }
  it { should_not allow_value('6').for(:rating) }
  it { should_not allow_value('4.5').for(:rating) }
  it { should_not allow_value('A').for(:rating) }
  it { should allow_value('1').for(:rating) }
  it { should validate_presence_of :product_id }


  it { should belong_to :product }
end
