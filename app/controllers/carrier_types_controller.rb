class CarrierTypesController < ApplicationController
  before_action :set_carrier_type, only: [:show, :edit, :update, :destroy]

  # GET /carrier_types
  # GET /carrier_types.json
  def index
    @carrier_types = CarrierType.all
  end

  # GET /carrier_types/1
  # GET /carrier_types/1.json
  def show
  end

  # GET /carrier_types/new
  def new
    @carrier_type = CarrierType.new
  end

  # GET /carrier_types/1/edit
  def edit
  end

  # POST /carrier_types
  # POST /carrier_types.json
  def create
    @carrier_type = CarrierType.new(carrier_type_params)

    respond_to do |format|
      if @carrier_type.save
        format.html { redirect_to @carrier_type, notice: 'Carrier type was successfully created.' }
        format.json { render :show, status: :created, location: @carrier_type }
      else
        format.html { render :new }
        format.json { render json: @carrier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrier_types/1
  # PATCH/PUT /carrier_types/1.json
  def update
    respond_to do |format|
      if @carrier_type.update(carrier_type_params)
        format.html { redirect_to @carrier_type, notice: 'Carrier type was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrier_type }
      else
        format.html { render :edit }
        format.json { render json: @carrier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrier_types/1
  # DELETE /carrier_types/1.json
  def destroy
    @carrier_type.destroy
    respond_to do |format|
      format.html { redirect_to carrier_types_url, notice: 'Carrier type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    CarrierType.import(params[:file])
    redirect_to carrier_types_path, notice: "Carrier Types Imported Successfully!"
    #code
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrier_type
      @carrier_type = CarrierType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrier_type_params
      params.require(:carrier_type).permit(:name)
    end
end
