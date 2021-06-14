module Api
  module V1
    class PostsController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end
    end
  end
end