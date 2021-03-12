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
  describe 'Course functions' do
        context 'should be able to delete courses' do
            it 'Admin users should be able to delete and edit courses' do
                user=User.create(
                                email: 'sample@me.com',
                                password: 'password',
                                password_confirmation: 'password',
                                superadmin_role: 'true'
                              )
                  visit new_user_session_path
                   fill_in 'user[email]', with: 'sample@me.com'
                   fill_in 'user[password]', with: 'password'
                   click_on 'Log in'
                   visit new_course_path
                   course=Course.create(name:"reversing", category: "manual", description: "we are going to do reversing", course_period: "2 weeks")
                    visit courses_path
                    expect{click_on "destroy"}
                    expect{click_on "edit"}
              end
            end
          end
      describe 'User can search for courses' do
          context 'should search by course name and category' do
              it 'users can search by course name and category' do
                  user=User.create(
                                   email: 'sample@me.com',
                                   password: 'password',
                                   password_confirmation: 'password')
                visit new_user_session_path
                 fill_in 'user[email]', with: 'sample@me.com'
                 fill_in 'user[password]', with: 'password'
                 click_on 'Log in'
                 visit courses_path
                  expect{click_on "Search"}
            end
          end
        end




end
