require 'rails_helper'
RSpec.describe Aplication, type: :system do
  describe 'should be able to apply for a course' do
      context 'User can apply for a course' do
          it 'users can apply for a course' do
              user=User.create(
                               email: 'sample@me.com',
                               password: 'password',
                               password_confirmation: 'password')
             visit new_user_session_path
             fill_in 'user[email]', with: 'sample@me.com'
             fill_in 'user[password]', with: 'password'
             click_on 'Log in'
             visit new_aplication_path
               expect{click_on "Create Aplication"}
          end
        end
      end

end
