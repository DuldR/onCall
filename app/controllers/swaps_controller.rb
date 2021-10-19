class SwapsController < ApplicationController
  before_action :set_swap, only: %i[ show edit update destroy ]

  # GET /swaps or /swaps.json
  def index
    @swaps = Swap.all
    render :index
  end

  # GET /swaps/1 or /swaps/1.json
  def show
    @swap = Swap.find(params[:id])
    render :show
  end

  # POST /swaps or /swaps.json
  def create
    @swap = Swap.new(swap_params)

    if @swap.save
      render json: :create, status: 200
    else
      render json: ["Not a valid swap"], status: 422
    end
  end

  def update
    @swap = Swap.find(params[:id])

    if @swap.update(swap_params)
      render json: @swap, status: 200
    else
      render json: ["Not a valid swap"], status: 422

    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swap
      @swap = Swap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def swap_params
      params.require(:swap).permit(:id, :user_id, :shift_id, :target_id, :target_shift_id, :origin_approve, :target_approve) 
    end
end
