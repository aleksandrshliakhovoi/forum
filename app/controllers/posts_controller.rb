class PostsController < ApplicationController
  def index
  end

  def show
  end

  def def new
    @topics = Topic.all() #get all topics from db
  end
  
end
