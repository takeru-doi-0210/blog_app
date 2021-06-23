module Api
  module V1
    class UsersController < ApplicationController
      def index
        @posts = Post.all
        @users = User.all
        render json: [@users, @posts]
      end
    end
  end
end