module Spree
  # UPGRADE_CHECK
  # class AuthorsController < Spree::StoreController
  
  class AuthorsController < BaseController
    before_filter :load_author, :only => :show
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def index
      @authors = Spree::Author.all
      @title = t(:author_index_title)
    end

    def show; end

    private
      def load_author
        @author = Author.find_by_permalink!(params[:id])
        @title = t(:author_title, :author => @author.name)
      end
  end
end
