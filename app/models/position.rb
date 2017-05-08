class Position < ApplicationRecord
  validates :title, presence: true
  has_many :employees
  belongs_to :salary
end
