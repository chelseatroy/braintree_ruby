module Braintree
  class UnknownPaymentMethod
    include BaseModule

    attr_reader :token

    def initialize(attributes)
      nested_attributes = attributes[attributes.keys.first]
      set_instance_variables_from_hash(nested_attributes)
    end

    def default?
      @default
    end

    def image_url
      "https://assets.braintreegateway.com/payment_method_logo/unknown.png"
    end
  end
end
