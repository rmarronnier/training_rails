class CourseReferenceTags2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :tag, foreign_key: true
  end
end
