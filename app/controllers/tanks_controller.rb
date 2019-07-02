class TanksController < ApplicationController

  def show
    @tank = Tank.find(params[:id])
    render :show
    if params[:press]
      @tank.money += 1
      @tank.save
    end
  end

  def new
    @tank = Tank.new
    @user = User.find(session[:user_id])
    # byebug
    render :new
  end

  def create
    @tank = Tank.new(tank_params)
    if @tank.valid?
      @tank.save
      redirect_to tank_path(@tank)
    else
      flash.now[:error] = @tank.errors.full_messages
      render :new
    end
  end

  def press
    tank = Tank.find(params[:id])
    tank.money += 1
    tank.save
    redirect_to tank_path(tank)
  end

  private

  def tank_params
    params.require(:tank).permit(:name, :user_id)
  end

end
