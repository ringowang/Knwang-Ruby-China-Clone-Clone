#
class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @reply = Reply.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = 1
    if @topic.save
      redirect_to topics_path
    else 
      render action: :new
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :content, :node_id, :user_id)
  end
end
