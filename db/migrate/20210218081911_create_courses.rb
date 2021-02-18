class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :category
      t.date :start_date
      t.date  :course_ends
      t.string :course_period
      t.timestamps
    end
  end
end
