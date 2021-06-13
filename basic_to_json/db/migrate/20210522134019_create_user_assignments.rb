class CreateUserAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :user_assignments do |t|
      t.integer :user_id
      t.integer :assigment_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end
