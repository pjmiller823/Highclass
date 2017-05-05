require 'test_helper'

class CharacterClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get character_classes_url
    assert_response :success
  end

  test "should display correct number of classes" do
    5.times do
      CharacterClass.create(name: "barbarian")
    end
    get character_classes_url
    assert_equal 5, assigns(:characterclass).length
  end

  test "should get show" do
    get character_class_url
    assert_response :success
  end
end
