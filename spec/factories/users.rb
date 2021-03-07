
FactoryBot.define do
  factory :user do
    first_name {'james'}
    last_name {'chansa'}
    mobile_number {'096615677'}
    email {'james@gmail.com'}
    password { 'jones94' }
    password_confirmation {'jones94'}
    superadmin_role {false}

  end
  factory :superadmin_role, class: User do
    first_name {'jones'}
    last_name {'chansa'}
    mobile_number {'0966156546'}
    email {'jones@gmail.com'}
    password {'jones94'}
    password_confirmation {'jones94'}
    superadmin_role {true }

  end
end
