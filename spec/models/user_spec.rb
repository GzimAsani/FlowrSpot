require 'rails_helper'
require './spec/factories/sighting'
RSpec.describe User, type: :model do
  subject { User.new(name: "Harry Poter", email: "gzim@gmail.com", password_digest: "123456") }
  
  before {subject.save}

  it "should be present" do
    subject.name = nil
    
    expect(subject).to_not be_valid
  end

  describe "flowers API", type: :request do
    it "returns all flowers" do
      get '/flowers'

      expect(response).to have_http_status(:success)
    end
  end
end
