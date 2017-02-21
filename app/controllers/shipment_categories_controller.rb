class ShipmentCategoriesController < ApplicationController
  before_action :set_shipment_category, only: [:show, :edit, :update, :destroy]

  # GET /shipment_categories
  # GET /shipment_categories.json
  def index
    @shipment_categories = ShipmentCategory.all
  end

  # GET /shipment_categories/1
  # GET /shipment_categories/1.json
  def show
  end

  # GET /shipment_categories/new
  def new
    @shipment_category = ShipmentCategory.new
  end

  # GET /shipment_categories/1/edit
  def edit
  end

  # POST /shipment_categories
  # POST /shipment_categories.json
  def create
    @shipment_category = ShipmentCategory.new(shipment_category_params)

    respond_to do |format|
      if @shipment_category.save
        format.html { redirect_to @shipment_category, notice: 'Shipment category was successfully created.' }
        format.json { render :show, status: :created, location: @shipment_category }
      else
        format.html { render :new }
        format.json { render json: @shipment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_categories/1
  # PATCH/PUT /shipment_categories/1.json
  def update
    respond_to do |format|
      if @shipment_category.update(shipment_category_params)
        format.html { redirect_to @shipment_category, notice: 'Shipment category was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment_category }
      else
        format.html { render :edit }
        format.json { render json: @shipment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_categories/1
  # DELETE /shipment_categories/1.json
  def destroy
    @shipment_category.destroy
    respond_to do |format|
      format.html { redirect_to shipment_categories_url, notice: 'Shipment category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_category
      @shipment_category = ShipmentCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_category_params
      params.require(:shipment_category).permit(:name, :shipment_type_id)
    end
end
