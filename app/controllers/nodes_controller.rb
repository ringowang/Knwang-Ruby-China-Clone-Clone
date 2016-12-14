#
class NodesController < ApplicationController
  def show
    @node = Node.find_by(params[:id])
  end
end
