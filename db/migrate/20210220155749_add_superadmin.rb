class AddSuperadmin < ActiveRecord::Migration[5.2]
  def change
    User.create! do |u|
      u.email = 'jones@gmail.com'
      u.password = 'jones92'
      u.superadmin_role = true
    end
  end
end
