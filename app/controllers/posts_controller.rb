class PostsController < ApplicationController
  skip_before_action :require_sign_in!, only: [:new, :create]

  def index
    @posts = Post.where.not(title: "res").order(created_at: "DESC")
  end

  def show
    @post = Post.find_by(id: params[:id])
    @posts = Post.where(board_id: @post.id).order(created_at: "DESC")
  end

  def new
  end

  def menu
  end
  
  def create
    @post = Post.new(user_params)

  	if @post.title!="res" and @post.save
  		redirect_to("/posts/index")
    elsif @post.title=="res" and @post.save 
      redirect_to("/posts/#{@post.board_id}")
  	else
  		render 'index'
  	end
  end

  private
      def user_params
        params.require(:post).permit(:title, :message, :board_id, :user_id, :name)
      end
end
