require 'rails_helper'


  describe "flowers API", type: :request do
    it "returns all flowers" do
      get '/flowers'

      expect(response).to have_http_status(:success)
    end
  end

