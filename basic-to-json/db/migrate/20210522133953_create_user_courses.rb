class CreateUserCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.datetime :completed_at
      t.timestamps
    end
  end
end
