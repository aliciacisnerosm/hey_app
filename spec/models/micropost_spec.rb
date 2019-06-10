require 'rails_helper'

RSpec.describe Micropost, type: :model do
      it { should belong_to(:user).order('lenght_on desc') }
      it { should validate_presence_of(:content) } 
    it {is_expected.to validate_length_of(:content).is_at_most(140)}

end



  





