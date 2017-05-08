class Salary < ApplicationRecord
  validates :value, presence: true
  
  belongs_to :bank_account,
    class_name: :BankAccount,
    foreign_key: :bank_account_id

  has_many :positions
  has_many :employees,
    through: :positions,
    source: :employees
end
