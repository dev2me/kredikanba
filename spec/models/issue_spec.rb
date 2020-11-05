require 'rails_helper'

RSpec.describe Issue, type: :model do
  it "validations relations for issue" do
    should have_many(:comments)
    should belong_to(:category)
    should belong_to(:user)
    should have_and_belong_to_many(:tags)
    should define_enum_for(:status).with_values([:pending, :todo, :done, :finished])
  end
end
