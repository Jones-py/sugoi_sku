require 'rails_helper'
RSpec.describe 'User functions', type: :system do
describe 'Sign_up users function' do
    context 'When user create an acount with the driving school' do
    it 'User Should Sign_up for the driving school account' do
    visit new_user_registration_path
    fill_in "user[first_name]", with: 'justine'
    fill_in "user[last_name]", with: 'chansa'
    fill_in "user[mobile_number]", with: '098654332'
    fill_in "user[email]", with:  'justine@gmail.com'
    fill_in "user[password]", with: 'jones94'
    fill_in "user[password_confirmation]", with: 'jones94'
    click_on 'Sign up'
    expect{click_on "Logout"}
  end
 end
end
describe 'Session functionality test' do
    before do
      User.create(email: 'jona@gmail.com',
                  password: 'jones94',
                  password_confirmation: 'jones94')
      visit new_user_session_path
      fill_in "user[email]", with: 'jona@gmail.com'
      fill_in "user[password]", with: "jones94"
      click_on 'Log in'
      @user = User.first
    end
    context 'to be able to login' do
      it 'enables login' do
        expect{click_on "Logout"}
      end
    end
    context 'to be able to logout' do
      it 'enables logout' do
        visit root_path
        click_on 'Logout'
       expect{click_on "Sign In"}
      end
    end
  end
  describe 'Admin management fuctions' do
       context 'Admin users should access the Admin Dasboard ' do
            it 'admin_user can access Admin Dasboard' do
          user=User.create(first_name: 'admin',
                            last_name: 'chansa',
                             email: 'admin@me.com',
                             password: 'password',
                             password_confirmation: 'password',
                             superadmin_role: 'true')
             visit new_user_session_path
           fill_in 'user[email]', with: 'admin@me.com'
           fill_in 'user[password]', with: 'password'
           click_on 'Log in'
           expect{ click_on "Admin Dasboard"}
           visit admin_path
           expect(page).to have_content("Home")
         end
       end
    end
    describe 'Admin management fuctions' do
       context 'Admin users can' do
             it 'admin can create Instructors' do
               user=User.create(
                                 first_name: 'chansa',
                                 last_name: 'jakes',
                                 email: 'jakes@gmail.com',
                                 password: 'try94',
                                 password_confirmation: 'try94',
                                 superadmin_role: 'true'
                                  )
               visit new_user_session_path
               fill_in 'user[email]', with: 'jakes@gmail.com'
               fill_in 'user[password]', with: 'try94'
               click_on 'Log in'
               expect{ click_on "Admin Dasboard"}
               visit admin_path
               # visit new_user_registration_path
               # visit new_user_path
               # click_on 'Add new'
               fill_in "admin[First_name]", with: "Danny"
               fill_in "admin[Fast_name]", with: "james"
               fill_in "admin[Email]", with: "user94@gmail.com"
               fill_in "admin[Password]", with: "jones94"
               fill_in "admin[Password_confirmation]", with: "jones94"
               check 'admin[Instructor role]', allow_label_click: true
               expect{click_on "Save"}.to change(User, :count).by(1)
           end
          end
        end
    #


end
