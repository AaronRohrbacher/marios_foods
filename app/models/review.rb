class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates_length_of :content_body, :in => 50..250
  validates :rating, :presence => true
  validates :rating, :numericality => {:only_integer => true}
  validates_inclusion_of :rating, :in => 1..5
  validates :product_id, :presence => true

end
