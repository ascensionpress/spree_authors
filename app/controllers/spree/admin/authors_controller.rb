module Spree
  module Admin
    class AuthorsController < ResourceController
      respond_to :html

      def index
        @authors = Spree::Author.all
      end

      protected
        def find_resource
          Author.find_by_permalink!(params[:id])
        end
    end
  end
end
