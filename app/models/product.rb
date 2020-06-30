class Product < ApplicationRecord


  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, uniqueness: true, length: { in: 1...100 }
  validates :price, presence: true, numericality: { greater_than: 0 }

  # validates :description, length: { in: 10...500 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  #Association Method - this is a Model Method, is in /models
  belongs_to :supplier 
  # def supplier
  #   Supplier.find_by(id: supplier_id)  #find_by returns a hash
  # end
  has_many :images

end