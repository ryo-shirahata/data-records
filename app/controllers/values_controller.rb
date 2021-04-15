class ValuesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    value = Value.create(value_params)
    redirect_to "/halls/#{value.hall.id}"
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def value_params
    params.require(:value).permit(:text).merge(user_id: current_user.id, hall_id: params[:hall_id])
  end

end
