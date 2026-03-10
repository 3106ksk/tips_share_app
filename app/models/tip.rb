class Tip < ApplicationRecord

  validates :title, presence: true, length: { maximum: 255 }
  validates :problem, presence: true
  validates :hypothesis, presence: true
  validates :action, presence: true
  validates :learning, presence: true

  belongs_to :user
  belongs_to :category

end
