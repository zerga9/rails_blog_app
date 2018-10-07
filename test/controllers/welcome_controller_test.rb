require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'should go to homepage' do
    get welcome_index_url
    assert_response :success
  end
end
