module BitbucketApi
  module Model
    class Base
      def initialize(attributes)
        assign_attributes(attributes)
      end

      private

      def assign_attributes(attributes)
        raise ArgumentError, "Attributes is empty" if attributes.empty?

        attributes.each do |key, value|
          assign_attribute(key, value)
        end
      end

      # Private: Set attribute with only defined resource attribute
      def assign_attribute(key, value)
        setter = :"#{key}="
        public_send(setter, value) if respond_to?(setter)
      end
    end
  end
end
