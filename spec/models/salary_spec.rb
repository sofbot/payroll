require 'rails_helper'

describe Salary do
  it { should validate_presence_of(:value) }
  it { should belong_to(:bank_account) }
  it { should have_many(:positions) }
  it { should have_many(:employees) }
end
