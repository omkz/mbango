class SaleDetailsController < ApplicationController
  before_action :set_sale_detail, only: [:show, :update, :destroy]

  # GET /sale_details
  def index
    @sale_details = SaleDetail.all

    render json: @sale_details
  end

  # GET /sale_details/1
  def show
    render json: @sale_detail
  end

  # POST /sale_details
  def create
    @sale_detail = SaleDetail.new(sale_detail_params)

    if @sale_detail.save
      render json: @sale_detail, status: :created, location: @sale_detail
    else
      render json: @sale_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sale_details/1
  def update
    if @sale_detail.update(sale_detail_params)
      render json: @sale_detail
    else
      render json: @sale_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sale_details/1
  def destroy
    @sale_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_detail
      @sale_detail = SaleDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sale_detail_params
      params.require(:sale_detail).permit(:quantity, :description, :sub_total, :description, :sale_id, :product_id)
    end
end
