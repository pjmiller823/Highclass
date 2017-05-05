class CharacterClassesController < ApplicationController
  def index
    @characterclass = CharacterClass.all
  end
end
