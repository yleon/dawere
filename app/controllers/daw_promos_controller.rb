class DawPromosController < ApplicationController
  before_action :set_daw_promo, only: [:show, :edit, :update, :destroy]

  # GET /daw_promos
  # GET /daw_promos.json
  def index
    @daw_promos = DawPromo.all
  end

  # GET /daw_promos/1
  # GET /daw_promos/1.json
  def show
  end

  # GET /daw_promos/new
  def new
    @daw_promo = DawPromo.new
  end

  # GET /daw_promos/1/edit
  def edit
  end

  # POST /daw_promos
  # POST /daw_promos.json
  def create
    @daw_promo = DawPromo.new(daw_promo_params)

    respond_to do |format|
      if @daw_promo.save
        format.html { redirect_to @daw_promo, notice: 'Daw promo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_promo }
      else
        format.html { render :new }
        format.json { render json: @daw_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_promos/1
  # PATCH/PUT /daw_promos/1.json
  def update
    respond_to do |format|
      if @daw_promo.update(daw_promo_params)
        format.html { redirect_to @daw_promo, notice: 'Daw promo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_promo }
      else
        format.html { render :edit }
        format.json { render json: @daw_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_promos/1
  # DELETE /daw_promos/1.json
  def destroy
    @daw_promo.destroy
    respond_to do |format|
      format.html { redirect_to daw_promos_url, notice: 'Daw promo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_promo
      @daw_promo = DawPromo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_promo_params
      params.require(:daw_promo).permit(:pro_nombre, :pro_porcentaje, :pro_fechaini, :pro_fechafin, :pro_tipopromocion, :pro_estado, :daw_alianza_id)
    end
end
