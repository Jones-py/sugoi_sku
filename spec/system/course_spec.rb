require 'rails_helper'

RSpec.describe Course, type: :system do
  describe 'New Features' do
    context 'create a new course' do
      it 'course created and displayed' do
     course=Course.create(name:"reversing", category: "manual", description: "we are going to do reversing", course_period: "2 weeks")
     visit course_path(course)
     expect(page).to have_content "reversing"
     expect(page).to have_content "we are going to do reversing"
    end
   end
  end





end
