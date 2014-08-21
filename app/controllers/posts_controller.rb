class PostsController < ApplicationController
  def index
    @all_posts = Post.all
  end
  def show
    @post = Post.find_by_id(params[:id])
  end
  def new
  end
  def create
    form_data = params[:post].permit(:author, :title, :description)
    Post.create(form_data)
    redirect_to "/"
  end
end
