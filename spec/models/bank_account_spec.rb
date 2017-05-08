require 'rails_helper'

describe BankAccount do
  it { should validate_presence_of(:account_number) }
  it { should validate_presence_of(:balance) }
  it { should have_many(:salaries) }
end
