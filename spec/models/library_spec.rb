require 'rails_helper'

RSpec.describe Library, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:movie) }
  it { should belong_to(:user) }
  it { should belong_to(:season) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quality) }
end
