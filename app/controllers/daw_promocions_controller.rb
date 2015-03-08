class DawPromocionsController < ApplicationController
  before_action :set_daw_promocion, only: [:show, :edit, :update, :destroy]

  # GET /daw_promocions
  # GET /daw_promocions.json
  def index
    @daw_promocions = DawPromocion.all
  end

  # GET /daw_promocions/1
  # GET /daw_promocions/1.json
  def show
  end

  # GET /daw_promocions/new
  def new
    @daw_promocion = DawPromocion.new
  end

  # GET /daw_promocions/1/edit
  def edit
  end

  # POST /daw_promocions
  # POST /daw_promocions.json
  def create
    @daw_promocion = DawPromocion.new(daw_promocion_params)

    respond_to do |format|
      if @daw_promocion.save
        format.html { redirect_to @daw_promocion, notice: 'Daw promocion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_promocion }
      else
        format.html { render :new }
        format.json { render json: @daw_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_promocions/1
  # PATCH/PUT /daw_promocions/1.json
  def update
    respond_to do |format|
      if @daw_promocion.update(daw_promocion_params)
        format.html { redirect_to @daw_promocion, notice: 'Daw promocion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_promocion }
      else
        format.html { render :edit }
        format.json { render json: @daw_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_promocions/1
  # DELETE /daw_promocions/1.json
  def destroy
    @daw_promocion.destroy
    respond_to do |format|
      format.html { redirect_to daw_promocions_url, notice: 'Daw promocion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_promocion
      @daw_promocion = DawPromocion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_promocion_params
      params.require(:daw_promocion).permit(:pro_nombre, :pro_porcentaje, :pro_fechainicio, :pro_fechafin, :pro_tipopromocion, :pro_estado)
    end
end
