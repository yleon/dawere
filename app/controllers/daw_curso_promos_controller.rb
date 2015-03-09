class DawCursoPromosController < ApplicationController
  before_action :set_daw_curso_promo, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_promos
  # GET /daw_curso_promos.json
  def index
    @daw_curso_promos = DawCursoPromo.all
  end

  # GET /daw_curso_promos/1
  # GET /daw_curso_promos/1.json
  def show
  end

  # GET /daw_curso_promos/new
  def new
    @daw_curso_promo = DawCursoPromo.new
  end

  # GET /daw_curso_promos/1/edit
  def edit
  end

  # POST /daw_curso_promos
  # POST /daw_curso_promos.json
  def create
    @daw_curso_promo = DawCursoPromo.new(daw_curso_promo_params)

    respond_to do |format|
      if @daw_curso_promo.save
        format.html { redirect_to @daw_curso_promo, notice: 'Daw curso promo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_promo }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_promos/1
  # PATCH/PUT /daw_curso_promos/1.json
  def update
    respond_to do |format|
      if @daw_curso_promo.update(daw_curso_promo_params)
        format.html { redirect_to @daw_curso_promo, notice: 'Daw curso promo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_promo }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_promos/1
  # DELETE /daw_curso_promos/1.json
  def destroy
    @daw_curso_promo.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_promos_url, notice: 'Daw curso promo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_promo
      @daw_curso_promo = DawCursoPromo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_promo_params
      params.require(:daw_curso_promo).permit(:daw_promo_id)
    end
end
