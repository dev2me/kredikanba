require 'rails_helper'

RSpec.describe User, type: :model do
  it "validation relations for user" do
    should have_and_belong_to_many(:projects)
    should have_many(:issues)
  end
end
