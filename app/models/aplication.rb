class Aplication < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :payment_method, presence: true, length: { maximum: 100}
end
