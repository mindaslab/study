class CreateCourseUsers < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.references :course, index: true
      t.references :user, index: true
      t.integer :role

      t.timestamps
    end
  end
end
