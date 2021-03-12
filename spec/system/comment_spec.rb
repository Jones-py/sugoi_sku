require 'rails_helper'
RSpec.describe Comment, type: :system do
  describe 'Users can post comments' do
      context 'when you login' do
          it 'users can post comments' do
              user=User.create(
                               email: 'sample@me.com',
                               password: 'password',
                               password_confirmation: 'password')
             visit new_user_session_path
             fill_in 'user[email]', with: 'sample@me.com'
             fill_in 'user[password]', with: 'password'
             click_on 'Log in'
             visit new_comment_path
               expect{click_on "Post comment"}
          end
        end
      end
    describe 'Comment functions' do
          context 'should be able to delete comments' do
              it 'users should be able to delete and edit comments' do
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
                      visit new_comment_path
                      comment=Comment.create(content:"Very interesting course")
                      expect{click_on "destroy"}
                      expect{click_on "edit"}
                end
              end
            end



end
