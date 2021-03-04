class Course < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :aplications
  default_scope { order(created_at: :desc)}
  validates :name, presence: true, uniqueness: true, length: { maximum:100}
  validates :description, presence: true, length: { maximum: 721}

end
