class DawMatriculaPromocionsController < ApplicationController
  before_action :set_daw_matricula_promocion, only: [:show, :edit, :update, :destroy]

  # GET /daw_matricula_promocions
  # GET /daw_matricula_promocions.json
  def index
    @daw_matricula_promocions = DawMatriculaPromocion.all
  end

  # GET /daw_matricula_promocions/1
  # GET /daw_matricula_promocions/1.json
  def show
  end

  # GET /daw_matricula_promocions/new
  def new
    @daw_matricula_promocion = DawMatriculaPromocion.new
  end

  # GET /daw_matricula_promocions/1/edit
  def edit
  end

  # POST /daw_matricula_promocions
  # POST /daw_matricula_promocions.json
  def create
    @daw_matricula_promocion = DawMatriculaPromocion.new(daw_matricula_promocion_params)

    respond_to do |format|
      if @daw_matricula_promocion.save
        format.html { redirect_to @daw_matricula_promocion, notice: 'Daw matricula promocion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_matricula_promocion }
      else
        format.html { render :new }
        format.json { render json: @daw_matricula_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_matricula_promocions/1
  # PATCH/PUT /daw_matricula_promocions/1.json
  def update
    respond_to do |format|
      if @daw_matricula_promocion.update(daw_matricula_promocion_params)
        format.html { redirect_to @daw_matricula_promocion, notice: 'Daw matricula promocion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_matricula_promocion }
      else
        format.html { render :edit }
        format.json { render json: @daw_matricula_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_matricula_promocions/1
  # DELETE /daw_matricula_promocions/1.json
  def destroy
    @daw_matricula_promocion.destroy
    respond_to do |format|
      format.html { redirect_to daw_matricula_promocions_url, notice: 'Daw matricula promocion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_matricula_promocion
      @daw_matricula_promocion = DawMatriculaPromocion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_matricula_promocion_params
      params.require(:daw_matricula_promocion).permit(:daw_promocion_id)
    end
end
