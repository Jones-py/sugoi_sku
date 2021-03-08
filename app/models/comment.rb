class Comment < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :user, optional: true
  validates :content, presence: true

  validates :content, presence: true, length: { maximum: 700}


end
