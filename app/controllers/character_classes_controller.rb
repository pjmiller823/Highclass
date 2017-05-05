class CharacterClassesController < ApplicationController
  def index
    @characterclass = CharacterClass.all
  end

  def show

  end
end
