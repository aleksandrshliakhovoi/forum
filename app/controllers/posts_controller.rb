class PostsController < ApplicationController
  def index
    @posts = Post.all()
  end

  def show
    @post = Post.find(params[:id]) #id from request_path which is /post/:id
  end

  def edit
    @post = Post.find(params[:id]) #id from request_path which is /post/:id
    @topics = Topic.all() #get all topics from db
  end

  def new
    @topics = Topic.all() #get all topics from db
  end

  def create
    @post = Post.new(post_params) #nested params
    @post.save

    redirect_to '/posts/' + @post.id.to_s
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params) 
    redirect_to '/posts/' + @post.id.to_s
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :topic_id)
  end
end
