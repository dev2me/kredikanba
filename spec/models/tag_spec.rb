require 'rails_helper'

RSpec.describe Tag, type: :model do
  it "relationship for tag" do
    should have_and_belong_to_many(:issues)
  end
end
