require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Delivery < OmniAuth::Strategies::OAuth2
      option :name, 'delivery'

      # option :fields, [:name, :email]
      
      option :client_options, {
        :site => "https://api.delivery.com",
        :authorize_url => "https://api.delivery.com/third_party/authorize",
        :token_url => "https://api.delivery.com/third_party/access_token"
      }

      option :authorize_params, {
        :scope => 'global'
      }

      uid { params['access_token'] }

      # info do
      #   {
      #     :name => raw_info['name'],
      #     :email => raw_info['email']
      #   }
      # end

      def request_phase
        super
      end

      

    end
  end
end