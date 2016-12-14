class ChangeContentTypeInTopics < ActiveRecord::Migration[5.0]
  def change
    change_column :topics, :content, :text
  end
end
