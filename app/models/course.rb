class Course < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :aplications
  default_scope { order(created_at: :desc)}

  validates :description, presence: true, length: { maximum: 700}
  validates :category, presence: true, length: { maximum:30}
  validates :course_period, presence: true, length: { maximum: 50}
  validates_numericality_of :course_period, :only_integer =>true,
                            :greater_than =>0

end
