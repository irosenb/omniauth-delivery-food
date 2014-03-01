require 'spec_helper'

describe OmniAuth::Strategies::Delivery do
  subject do
    OmniAuth::Strategies::Delivery.new(nil, @options || {})
  end

  describe '#client' do
    it 'should have the correct delivery site' do
      expect(subject.client.site).to eq("https://api.delivery.com")
    end

    it "should have the correct delivery authorization url" do
      expect(subject.client.authorize_url).to eq("https://api.delivery.com/third_party/authorize") 
    end

    it "should have the correct delivery token url" do
      expect(subject.client.token_url).to eq("https://api.delivery.com/third_party/access_token") 
    end
  end
end