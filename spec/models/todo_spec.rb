require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { validate_presence_of(:title) }
  it { validate_inclusion_of(:done).in_array([true, false]) }
end
