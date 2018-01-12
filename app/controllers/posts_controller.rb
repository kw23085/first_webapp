class PostsController < ApplicationController
    before_action :authorize, only: [:new, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.body = params[:post][:body]
        @post.picture_url = params[:post][:picture_url]
        @post.user = current_user
        if @post.save
            redirect_to posts_path
        else
            redirect_to new_post_path
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
