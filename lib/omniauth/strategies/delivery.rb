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

      uid { request.params['code'] }

      # info do
      #   {
      #     :name => raw_info['name'],
      #     :email => raw_info['email']
      #   }
      # end

      def request_phase
        super
      end

      def build_access_token
        super
      end

      def raw_info
        @raw_info ||= JSON.parse(access_token.get(client_options[:token_url]).body)
      end

    end
  end
end