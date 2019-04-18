require 'rails_helper'

RSpec.describe Episode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:season) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
end
