class ShiftsController < ApplicationController
  before_action :set_shift, only: %i[ show edit update destroy ]

  # GET /shifts or /shifts.json
  def index
    @shifts = Shift.all
    render :index
  end

  # GET /shifts/1 or /shifts/1.json
  def show
    @shift = Shift.find(params[:id])
    render :show
  end

  # POST /shifts or /shifts.json
  def create
    @shift = Shift.new(shift_params)

    if @shift.save
      render json: :create, status: 200
    else
      render json: ["Not a valid shift"], status: 422
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @shift = Shift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_params
      params.require(:shift).permit(:shift_start, :shift_end, :user_id, :month_id)
    end
end
