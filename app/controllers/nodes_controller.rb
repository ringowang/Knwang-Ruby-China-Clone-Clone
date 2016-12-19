#
class NodesController < ApplicationController
  def show
    @node = Node.find_by(id: params[:id])
  end
end
