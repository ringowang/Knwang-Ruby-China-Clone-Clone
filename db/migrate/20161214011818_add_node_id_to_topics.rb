class AddNodeIdToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :node_id, :integer
  end
end
