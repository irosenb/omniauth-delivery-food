require "omniauth"

module Omniauth
  module Strategies
    class Delivery
      include Omniauth::Strategy

      option :fields, [:name, :email]
    end
    
  end
  
end