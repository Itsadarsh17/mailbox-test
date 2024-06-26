module Api
  module V1
    class ArticlesController < Api::V1::ApiController
      def index
        @articles = Article.all
      end
    end
  end
end
