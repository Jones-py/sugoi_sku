class CreateCourseApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :course_applications do |t|
      t.string :payment_method
      t.timestamps
    end
  end
end
