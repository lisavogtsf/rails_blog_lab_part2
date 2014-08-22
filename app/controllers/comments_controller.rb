class CommentsController < ApplicationController

	def index
		post_id =  params[:post_id]
		@post = Post.find(id)
		@comments = @creature.comments
	end

	def create
		post_id = params[:post_id]
		@post = Post.find(post_id)
		@comment = @post.comments.new
	end

end
