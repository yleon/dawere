class DawMatriculaPromosController < ApplicationController
  before_action :set_daw_matricula_promo, only: [:show, :edit, :update, :destroy]

  # GET /daw_matricula_promos
  # GET /daw_matricula_promos.json
  def index
    @daw_matricula_promos = DawMatriculaPromo.all
  end

  # GET /daw_matricula_promos/1
  # GET /daw_matricula_promos/1.json
  def show
  end

  # GET /daw_matricula_promos/new
  def new
    @daw_matricula_promo = DawMatriculaPromo.new
  end

  # GET /daw_matricula_promos/1/edit
  def edit
  end

  # POST /daw_matricula_promos
  # POST /daw_matricula_promos.json
  def create
    @daw_matricula_promo = DawMatriculaPromo.new(daw_matricula_promo_params)

    respond_to do |format|
      if @daw_matricula_promo.save
        format.html { redirect_to @daw_matricula_promo, notice: 'Daw matricula promo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_matricula_promo }
      else
        format.html { render :new }
        format.json { render json: @daw_matricula_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_matricula_promos/1
  # PATCH/PUT /daw_matricula_promos/1.json
  def update
    respond_to do |format|
      if @daw_matricula_promo.update(daw_matricula_promo_params)
        format.html { redirect_to @daw_matricula_promo, notice: 'Daw matricula promo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_matricula_promo }
      else
        format.html { render :edit }
        format.json { render json: @daw_matricula_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_matricula_promos/1
  # DELETE /daw_matricula_promos/1.json
  def destroy
    @daw_matricula_promo.destroy
    respond_to do |format|
      format.html { redirect_to daw_matricula_promos_url, notice: 'Daw matricula promo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_matricula_promo
      @daw_matricula_promo = DawMatriculaPromo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_matricula_promo_params
      params.require(:daw_matricula_promo).permit(:daw_promo_id)
    end
end
