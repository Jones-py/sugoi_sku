class CreateCourseApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :course_applications do |t|
      t.string :first_name
      t.string :last_name
      t.date  :DOB
      t.string :gender
      t.integer :mobile_number
      t.string :course_category
      t.string :payment_method
      t.timestamps
    end
  end
end
