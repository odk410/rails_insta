class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def new
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content],
      avatar: params[:avatar]
    )

    redirect_to '/'
  end

  def update
    post = Post.find(params[:id])

    post.update(
      title: params[:title],
      content: params[:content]
    )
    redirect_to "/posts/show/#{params[:id]}"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end
end
