require 'test_helper'

class CharacterClassTest < ActiveSupport::TestCase
  def test_character_classes_have_all_expected_attributes
    character_class = CharacterClass.create(name: "Gavin", hit_points: 120)

    assert_equal "Gavin", character_class.name
    assert_equal 120, character_class.hit_points
  end
end
