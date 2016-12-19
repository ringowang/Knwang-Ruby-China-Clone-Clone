class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.text :content
      t.integer :topic_id
      t.timestamps
    end
  end
end
