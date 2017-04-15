class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end
	def show
		# @post = Post.find(params[:id])## NOT NEEDED ANYMORE MOVED TO BEFORE_ACTION
	end

	def new
		@post = Post.new
	end
	def create
		@user = current_user
		@post = @user.posts.build(allowed_params)

		if @post.save
			flash[:success] = "¡Nuevo post creado!"
			redirect_to @post
		else
			flash[:warning] = "¡Opps! Algo ha salido mal, revisa los campos antes de continuar."
			render 'new'
		end
	end

	def edit
		# @post = Post.find(params[:id])## NOT NEEDED ANYMORE MOVED TO BEFORE_ACTION
		redirect_to posts_path unless @post.user == current_user
	end
	def update
		# @post = Post.find(params[:id])## NOT NEEDED ANYMORE MOVED TO BEFORE_ACTION
		if @post.user == current_user
			if @post.update_attributes(allowed_params)
				flash[:success] = "¡Post actualizado!"
				redirect_to @post
			else
				render 'edit'
			end
		else
			redirect_to posts_path
			flash[:error] = "¡No puedes editar el post!"
		end
	end

	def destroy
		# @post = Post.find(params[:id])## NOT NEEDED ANYMORE MOVED TO BEFORE_ACTION
		if @post.user == current_user
			@post.destroy
			redirect_to posts_path
			flash[:success] = "¡Post Eliminado!"
		else
			redirect_to root_path
			flash[:error] = "¡No puees eliminar el post!"
		end
	end

	private
		def allowed_params
			# t.string   "title" "body" "name" "excerpt" "status" "comment_status" "comment_count" "post_type"
			params.require(:post).permit(:title, :body, :name, :excerpt, :status, :comment_status, :comment_count, :post_type)
		end

end
