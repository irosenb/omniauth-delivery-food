require "omniauth"

module Omniauth
  module Strategies
    class Delivery < Omniauth::Strategies::OAuth2
      option :name, 'delivery'

      option :fields, [:name, :email]
      
      option :client_options, {
        :site => "api.delivery.com",
        :authorize_url => "/third_party/authorize",
        :token_url => "/third_party/access_token"
      }

      def request_phase
        super
      end

    end
  end
end