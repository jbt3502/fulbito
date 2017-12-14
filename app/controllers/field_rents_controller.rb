class FieldRentsController < ApplicationController
  before_action :set_field_rent, only: [:show, :edit, :update, :destroy]

  # GET /field_rents
  # GET /field_rents.json
  def index
    @field_rents = FieldRent.all
  end

  # GET /field_rents/1
  # GET /field_rents/1.json
  def show
  end

  # GET /field_rents/new
  def new
    @field_rent = FieldRent.new
  end

  # GET /field_rents/1/edit
  def edit
  end

  # POST /field_rents
  # POST /field_rents.json
  def create
    @field_rent = FieldRent.new(field_rent_params)

    respond_to do |format|
      if @field_rent.save
        format.html { redirect_to @field_rent, notice: 'Field rent was successfully created.' }
        format.json { render :show, status: :created, location: @field_rent }
      else
        format.html { render :new }
        format.json { render json: @field_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_rents/1
  # PATCH/PUT /field_rents/1.json
  def update
    respond_to do |format|
      if @field_rent.update(field_rent_params)
        format.html { redirect_to @field_rent, notice: 'Field rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_rent }
      else
        format.html { render :edit }
        format.json { render json: @field_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_rents/1
  # DELETE /field_rents/1.json
  def destroy
    @field_rent.destroy
    respond_to do |format|
      format.html { redirect_to field_rents_url, notice: 'Field rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_rent
      @field_rent = FieldRent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_rent_params
      params.require(:field_rent).permit(:field_id, :service_id, :fecha, :hora, :descripcion)
    end
end
