module Api
  module V1
    class ArticlesController < Api::V1::ApiController
      def index
        @pagy, @articles = pagy(Article.all)
        @pagination = pagy_metadata(@pagy)
      end
    end
  end
end
