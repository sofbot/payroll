class Employee < ApplicationRecord
  validates :name, presence: true
  belongs_to :position
  has_one :salary,
    through: :position,
    source: :salary
end
