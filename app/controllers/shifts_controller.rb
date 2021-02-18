class ShiftsController < ApplicationController
  def index
    @shifts = Shift.includes(:user)
  end

  def new
    @shifts = Shift.includes(:user)
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
  end

  private

  def shift_params
    params.require(:shift).permit(:day).merge(:user_id)
  end  

end
