class RepliesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @replies = @topic.replies.new(reply_params)
    @replies.user_id = 4
    @replies.save
    redirect_to topics_path
  end

  private
  def reply_params
    params.require(:reply).permit(:content, :user_id)
  end
end