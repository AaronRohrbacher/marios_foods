class Product < ActiveRecord::Base
  has_many :comments
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
end
