class MonthsController < ApplicationController
  before_action :set_month, only: %i[ show edit update destroy ]

  # GET /months or /months.json
  def index
    @months = Month.all
    render :index
  end

  # GET /months/1 or /months/1.json
  def show
    @month = Month.find(params[:id])
    render :show
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_month
      @month = Month.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def month_params
      params.require(:month).permit(:month_num)
    end
end
