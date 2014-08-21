class PostsController < ApplicationController
  def index
    @all_posts = Post.all
  end
  def show
    @post = Post.find_by_id(params[:id])
    @tags = @post.tags
  end
  def new
  end
  def create
    post_data = params[:post].permit(:author, :title, :description)
    tag_data = params[:tags].split(",").map(&:strip).map(&:downcase)

    post = Post.create(post_data)
    tag_data.each do |tag_str|
      tag = Tag.find_by_name(tag_str)
      if tag == nil
        tag = Tag.create(:name => tag_str)
      end
      post.tags << tag
    end

    redirect_to "/"
  end
  def delete
    post = Post.find_by_id(params[:id])
    if post
      post.destroy
    end
    redirect_to "/"
  end
end
