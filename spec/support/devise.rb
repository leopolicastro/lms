RSpec.configure do |config|
  # controllers
  config.include Devise::Test::ControllerHelpers, type: :routing
  config.include Devise::Test::ControllerHelpers, type: :view
  config.include Devise::Test::ControllerHelpers, type: :controller
  # integrations
  config.include Devise::Test::IntegrationHelpers, type: :routing
  config.include Devise::Test::IntegrationHelpers, type: :request
  config.include Devise::Test::IntegrationHelpers, type: :feature
end
