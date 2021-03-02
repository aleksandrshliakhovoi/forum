class PostsController < ApplicationController
  def index
    @post = Post.all()
  end

  def show
    @post = Post.find(params[:id]) #id from request_path which is /post/:id
  end

  def new
    @topics = Topic.all() #get all topics from db
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body, :topic_id)) #nested params
    @post.save

    redirect_to '/posts/' + @post.id.to_s
  end
  
end
