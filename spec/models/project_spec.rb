require 'rails_helper'

RSpec.describe Project, type: :model do
  it "validation relationships for project" do
    should have_many(:issues)
    should have_and_belong_to_many(:users)
  end
  it "validate properties" do
    should validate_presence_of(:name)
  end
end
