require 'rails_helper'
require 'spec_helper'

describe User, :type => :model do
  it 'creates a new user with the specified email address' do
    user = User.new({email: 'someone@example.com'})
    expect(user.email).to eq 'someone@example.com'
  end
end
