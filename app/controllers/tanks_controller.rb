class TanksController < ApplicationController

  before_action :authorized

  def index
    render :index
  end

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
      current_user.tanks << @tank
      @tank.save
      redirect_to "/tanks/#{@tank.id}"
    else
      flash.now[:error] = @tank.errors.full_messages
      render :new
    end
  end

  def purchase

    @tank = Tank.find(params[:tank][:id])
    @fish = Fish.find(params[:fish_id])

    if @tank.money > @fish.cost && !@tank.fish.include?(@fish)
      @tank.money -= @fish.cost
      FishTank.create(tank_id: @tank.id, fish_id: @fish.id)
      @tank.save
      redirect_to "/tanks/#{@tank.id}"
    else

      if @tank.fish.include?(@fish)
        flash[:error] = "This fish already lives in that tank!"
      elsif @tank.money < @fish.cost
        flash[:error] = "This tank has insufficient funds!"
      end
      redirect_to fish_index_path
    end

  end

  def purchase_decoration

    @tank = Tank.find(params[:tank][:id])
    @decoration = Decoration.find(params[:decoration_id])

    if @tank.money > @decoration.cost && !@tank.decorations.include?(@decoration)
      @tank.money -= @decoration.cost
      DecorationTank.create(tank_id: @tank.id, decoration_id: @decoration.id)
      @tank.save
      redirect_to "/tanks/#{@tank.id}"
    else

      if @tank.decorations.include?(@decoration)
        flash[:error] = "You already have this decoration!"
      elsif @tank.money < @decoration.cost
        flash[:error] = "This tank has insufficient funds!"
      end
      redirect_to decorations_path
    end

  end

  def press
    tank = Tank.find(params[:id])
    tank.money += 1
    tank.save
    redirect_to "/tanks/#{tank.id}"
  end

  private

  def tank_params
    params.require(:tank).permit(:name, :user_id)
  end

end
