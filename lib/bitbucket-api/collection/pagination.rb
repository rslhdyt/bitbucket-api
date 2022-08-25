module BitbucketApi
  module Collection
    class Pagination
      attr_accessor :size,
                    :page,
                    :pagelen,
                    :next,
                    :previous
      
      def initialize(collection_attributes, model)
        build_collection(collection_attributes, model)
      end

      def collection
        @collection ||= []
      end

      private

      def build_collection(collection_attributes, model)
        @size = collection_attributes['size']
        @page = collection_attributes['page']
        @pagelen = collection_attributes['pagelen']
        @next = collection_attributes['next']
        @previous = collection_attributes['previous']
        @values = collection_attributes['values']
        
        @values.each do |value|
          collection << model.new(value)
        end
      end
    end
  end
end