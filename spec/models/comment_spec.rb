require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "relationships for comment" do
    should belong_to(:user)
    should belong_to(:issue)
  end
end
