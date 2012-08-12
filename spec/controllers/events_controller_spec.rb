require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    before do
      sign_in User.make!
    end

    it "returns http success" do
      get :index
      response.should be_success
    end
  end

end
