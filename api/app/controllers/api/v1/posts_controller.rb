module Api
  module V1
    class PostsController < ApplicationController
      def index
        render json: 'It is Post Controller'
      end
    end
  end
end