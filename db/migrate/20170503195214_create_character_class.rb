class CreateCharacterClass < ActiveRecord::Migration[5.0]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.string :hit_die
      t.text :description
      t.string :starting_wealth
      t.text :class_skills
      t.string :skill_ranks

    end
  end
end
