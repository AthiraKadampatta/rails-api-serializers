class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string  :name
      t.text    :description
      t.integer :course_id

      t.timestamps
    end
  end
end
