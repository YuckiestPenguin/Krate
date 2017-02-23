class ExtraChargeRangesController < ApplicationController
  before_action :set_extra_charge_range, only: [:show, :edit, :update, :destroy]

  # GET /extra_charge_ranges
  # GET /extra_charge_ranges.json
  def index
    @extra_charge_ranges = ExtraChargeRange.all
  end

  # GET /extra_charge_ranges/1
  # GET /extra_charge_ranges/1.json
  def show
  end

  # GET /extra_charge_ranges/new
  def new
    @extra_charge_range = ExtraChargeRange.new
  end

  # GET /extra_charge_ranges/1/edit
  def edit
  end

  # POST /extra_charge_ranges
  # POST /extra_charge_ranges.json
  def create
    @extra_charge_range = ExtraChargeRange.new(extra_charge_range_params)

    respond_to do |format|
      if @extra_charge_range.save
        format.html { redirect_to @extra_charge_range, notice: 'Extra charge range was successfully created.' }
        format.json { render :show, status: :created, location: @extra_charge_range }
      else
        format.html { render :new }
        format.json { render json: @extra_charge_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_charge_ranges/1
  # PATCH/PUT /extra_charge_ranges/1.json
  def update
    respond_to do |format|
      if @extra_charge_range.update(extra_charge_range_params)
        format.html { redirect_to @extra_charge_range, notice: 'Extra charge range was successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_charge_range }
      else
        format.html { render :edit }
        format.json { render json: @extra_charge_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_charge_ranges/1
  # DELETE /extra_charge_ranges/1.json
  def destroy
    @extra_charge_range.destroy
    respond_to do |format|
      format.html { redirect_to extra_charge_ranges_url, notice: 'Extra charge range was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_charge_range
      @extra_charge_range = ExtraChargeRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_charge_range_params
      params.require(:extra_charge_range).permit(:name, :description)
    end
end
