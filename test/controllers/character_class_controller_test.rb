require 'test_helper'

class CharacterClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get classes_url
    assert_response :success
  end
end
