require 'rails_helper'

RSpec.describe Relationship, type: :model do
  it{should_not allow_value(nil).for(:follower_id)}
  it{should_not allow_value(nil).for(:followed_id)}
end
