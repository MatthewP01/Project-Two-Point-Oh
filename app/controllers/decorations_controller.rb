class DecorationsController < ApplicationController

  before_action :authorized

  def index
    @decorations = Decoration.all
  end

end
