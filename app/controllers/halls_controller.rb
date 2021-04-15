class HallsController < ApplicationController
  before_action :set_hall, only: [:show, :edit, :update]

  def index
    @halls = Hall.includes(:user)
  end

  def show
    @value = Value.new
    @values = @hall.values.includes(:user)
  end

  def new
    @hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)
    if @hall.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hall.update(hall_params)
      redirect_to hall_path(@hall)
    else
      render :edit
    end
  end

  def destroy
    hall = Hall.find(params[:id])
    hall.destroy
    redirect_to root_path
  end


  private

  def hall_params
    params.require(:hall).permit(:name, :machine, :data).merge(user_id: current_user.id)
  end

  def set_hall
    @hall = Hall.find(params[:id])
  end

end
