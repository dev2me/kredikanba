require 'rails_helper'

RSpec.describe Category, type: :model do
  it "validation relations for category" do
    should have_one(:issue)
  end
end
