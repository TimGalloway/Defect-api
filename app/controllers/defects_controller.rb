class DefectsController < ApplicationController
  before_action :set_defect, only: [:show, :update, :destroy]

  # GET /defects
  def index
    @defects = Defect.all

    render json: @defects
  end

  # GET /defects/1
  def show
    render json: @defect
  end

  # POST /defects
  def create
    @defect = Defect.new(defect_params)

    if @defect.save
      render json: @defect, status: :created, location: @defect
    else
      render json: @defect.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /defects/1
  def update
    if @defect.update(defect_params)
      render json: @defect
    else
      render json: @defect.errors, status: :unprocessable_entity
    end
  end

  # DELETE /defects/1
  def destroy
    @defect.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defect
      @defect = Defect.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defect_params
      params.require(:defect).permit(:location, :description)
    end
end
