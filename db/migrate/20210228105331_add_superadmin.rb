class AddSuperadmin < ActiveRecord::Migration[5.2]
  def change
    User.create! do |u|
      u.first_name = 'jones'
      u.last_name = 'chansa'
      u.mobile_number = '0966156546'  
      u.email     = 'jones@gmail.com'
      u.password    = 'jones94'
      u.superadmin_role = true
    end
  end
end
