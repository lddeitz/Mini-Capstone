class Supplier < ApplicationRecord

  #Association Method Logic - this is a Model Method, is in /models

  has_many :products
  
  # def products
  #   Product.where(supplier_id: id) #where returns an array
  # end

end
