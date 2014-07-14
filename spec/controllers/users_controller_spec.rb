require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "POST 'create'" do
    it "returns http success" do
      post 'create' do |params|
        params[:email] = 'someone@example.com'
      end
      expect(response).to be_success
    end
  end

end
