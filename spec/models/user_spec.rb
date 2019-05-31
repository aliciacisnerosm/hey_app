require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:name) } 
  it { should validate_presence_of(:email)}
  
  it {is_expected.to validate_length_of(:name).is_at_least(10).on(:create)}

  it "is valid with email as lower-case" do
    user2 = build(:user, email: "OLA")
    expect(user2).not_to be_valid
  end

  it { should have_secure_password }



end
