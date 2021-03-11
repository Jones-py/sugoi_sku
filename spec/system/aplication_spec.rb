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
             visit new_aplication_path
               expect{click_on "Create Aplication"}
          end
        end
      end

end
