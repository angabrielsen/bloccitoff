require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "POST #create" do
  	context "when logged in as a user" do
  		let(:user) { create(:user) }
  		before { sign_in(user) }

  		it "returns http success" do
  			expect(response).to be_success
  		end
  	end
  end

end
