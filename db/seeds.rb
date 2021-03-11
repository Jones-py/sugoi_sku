
30.times do |t|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  user = User.create! :first_name => "jones#{t}",
                      :last_name => "chansa #{t}",
                      :mobile_number => "096615678#{t}",
                      :date_of_birth => '2/5/2002',
                      :email => "jones#{t}@gmail.com",
                      :password  => "jones94#{t}",
                      :password_confirmation => "jones94#{t}",
                      :superadmin_role => 'true'


end
