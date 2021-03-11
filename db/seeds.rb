
30.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  user = User.create! :first_name => 'jones',
                      :last_name => 'chansa',
                      :mobile_number => '096615678',
                      :date_of_birth => '2/5/2002',
                      :email => 'jones@gmail.com',
                      :password  => 'jones94',
                      :password_confirmation => 'jones94',
                      :superadmin_role => 'true'
end
