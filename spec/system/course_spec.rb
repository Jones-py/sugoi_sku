require 'rails_helper'
RSpec.describe Course, type: :system do
  describe 'New Features' do
    context 'create a new course' do
      it 'course created and displayed' do
     course=Course.create(name:"reversing", category: "manual", description: "we are going to do reversing", course_period: "2 weeks")
    end
   end
  end
describe 'Create Courses' do
  before do
    User.create(
            email: 'jona@gmail.com',
            password: 'jones94',
            password_confirmation: 'jones94',
            superadmin_role: 'true')
        visit new_user_session_path
        fill_in "user[email]", with: 'jona@gmail.com'
        fill_in "user[password]", with: "jones94"
        click_on 'Log in'
        @user = User.first
      end
      context 'Admin user can create courses' do
        it 'create courses' do
          visit courses_path
          expect{click_on "Create new Course"}
      end
    end
  end

end
