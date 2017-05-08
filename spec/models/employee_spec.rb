require 'rails_helper'

describe Employee do
  it { should validate_presence_of(:name) }
  it { should belong_to(:position) }
  it { should have_one(:salary) }
end
