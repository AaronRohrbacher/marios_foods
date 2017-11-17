require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should allow_value('The quick brown fox jumps over the lazy dog and I dont care').for(:content_body) }
  it { should_not allow_value('hello').for(:content_body)}
  it { should_not allow_value('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into ').for(:content_body)}

  it { should validate_presence_of :rating }
  it { should validate_presence_of :rating }
  it { should_not allow_value('6').for(:rating) }
  it { should_not allow_value('4.5').for(:rating) }
  it { should_not allow_value('A').for(:rating) }
  it { should allow_value('1').for(:rating) }
  it { should validate_presence_of :product_id }


  it { should belong_to :product }
end
