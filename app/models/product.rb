class Product < ApplicationRecord
    validates :title, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    belongs_to :category, optional: true # Set to optional for existing products without a category
end
