class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	
	def new
		@post = Post.new
	end
	
	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to @post
		else	
			render "form"
		end
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		
		redirect_to posts_url
	end
end
