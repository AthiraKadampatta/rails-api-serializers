class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.text    :description
      t.integer :topic_id

      t.timestamps
    end
  end
end
