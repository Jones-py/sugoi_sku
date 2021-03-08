require 'rails_helper'

RSpec.describe User, type: :model do
  describe  'user registration'  do
   it  "Name, Email, you can be registered if there is a password and Password_confirmation" do
    expect(build(:user)).to be_valid
  end
 end












end
