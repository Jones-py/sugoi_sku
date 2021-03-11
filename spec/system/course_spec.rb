require 'rails_helper'
RSpec.describe Course, type: :system do
  describe 'New Features' do
    context 'create a new course' do
      it 'course created and displayed' do
     course=Course.create(name:"reversing", category: "manual", description: "we are going to do reversing", course_period: "2 weeks")
    end
   end
  end
  describe 'course display function'  do
    context 'If the transition to the list screen'  do
      it 'already created course list is displayed' do
        visit courses_path
        click_on "Create new Course"
        fill_in "name", with: "Testing"
        fill_in "description", with: "will focus on reversing"
        select  'manual'
        fill_in "course_period", with: "4 weeks"
        click_on "Create Course"
        visit courses_path
        expect(page).to have_content "Testing"
        expect(page).to have_content "4 weeks"
      end
    end
  end

end
