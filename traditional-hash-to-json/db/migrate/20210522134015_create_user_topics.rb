class CreateUserTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :user_topics do |t|
      t.integer :user_id
      t.integer :topic_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end
