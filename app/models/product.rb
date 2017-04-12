class Product < ActiveRecord::Base
    has_many :info_products, inverse_of: :product
    accepts_nested_attributes_for :info_products, reject_if: :all_blank, allow_destroy: true
end