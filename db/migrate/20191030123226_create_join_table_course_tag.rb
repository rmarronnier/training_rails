class CreateJoinTableCourseTag < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :tags do |t|
      t.index [:course_id, :tag_id]
      t.index [:tag_id, :course_id]
    end
  end
end
