class TanksController < ApplicationController

  def show
    @tank = Tank.find(params[:id])
    render :show
  end

  def new
    @tank = Tank.new
    render :new
  end

  def create
    
  end

end
