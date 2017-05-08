class BankAccount < ApplicationRecord
  validates :account_number, :balance, presence: true
  has_many :salaries
end
