class ChangeColumnNullCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :name, :string, null: false
    change_column :courses, :description, :text, null: false
    change_column :courses, :course_period, :string, null: false
    change_column :courses, :category, :string, null: false
  end
end
