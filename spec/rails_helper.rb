require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'



begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.include  Devise::Test::IntegrationHelpers, Type: :Request  #Sign_in provides us with a helper
  config.include  FactoryBot::Syntax::Methods  # incidentally FactoryBot I will

  config.use_transactional_fixtures = true


  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
