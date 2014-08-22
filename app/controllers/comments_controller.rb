class CommentsController < ApplicationController

	def index
		post_id =  params[:post_id]
		@post = Post.find(id)
		@comments = @creature.comments
	end

	def create
		post_id = params[:post_id]
		@post = Post.find(post_id)
		comment_data = params[:post].permit(:commenter, :description)
		@comment = @post.comments.new(comments_params)

		# if @comment.save
		# 	redirect_to [@post, @comment]
		# else
		# 	render action: 'new'
		# end
	end

end
