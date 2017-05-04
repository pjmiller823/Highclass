require 'test_helper'

class CharacterClassTest < ActiveSupport::TestCase
  def test_character_classes_have_all_expected_attributes
    character_class = CharacterClass.create(name: "barbarian", hit_die: "1 d12", description: "barbarian", starting_wealth: "10 * 1d4", class_skills: "hitting", skill_ranks: "3 + INT")

    assert_equal "barbarian", character_class.name
    assert_equal "1 d12", character_class.hit_die
    assert_equal "barbarian", character_class.description
    assert_equal "10 * 1d4", character_class.starting_wealth
    assert_equal "hitting", character_class.class_skills
    assert_equal "3 + INT", character_class.skill_ranks
  end

  def test_character_classes_validates_presence_of_name
    character_class = CharacterClass.new(name: "", hit_die: "1 d12")

    assert character_class.invalid?
  end

  def test_character_classes_generates_an_error_on_a_blank_name
    character_class = CharacterClass.new(name: "", hit_die: "1 d12")

    character_class.valid?

    assert_equal ["can't be blank"], character_class.errors["name"]
  end
end
