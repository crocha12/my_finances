class Account < ApplicationRecord
  belongs_to :user
  has_many :operations, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :name, presence: true

  def balance
    self.operations.where('date <= ?', Date.today).sum(:amount)
  end
end
