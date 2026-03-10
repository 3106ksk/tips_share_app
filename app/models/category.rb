class Category < ApplicationRecord
  has_many :tips, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
