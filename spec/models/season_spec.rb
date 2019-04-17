require 'rails_helper'

RSpec.describe Season, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should have_many(:episodes).dependent(:destroy) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
end
