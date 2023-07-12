class Category < ApplicationRecord
  belongs_to :account
  has_many :operations, dependent: :destroy
end
