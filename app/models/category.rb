class Category < ApplicationRecord
    has_many :products, dependent: :nullify # Nullifies category_id if category is deleted
    validates :name, presence: true, uniqueness: true
end
