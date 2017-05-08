require 'rails_helper'

describe Position do
  it { should validate_presence_of(:title) }
  it { should belong_to(:salary) }
  it { should have_many(:employees) }
end
