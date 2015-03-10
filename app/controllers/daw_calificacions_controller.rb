class DawCalificacionsController < ApplicationController
  before_action :set_daw_calificacion, only: [:show, :edit, :update, :destroy]

  # GET /daw_calificacions
  # GET /daw_calificacions.json
  def index
    @daw_calificacions = DawCalificacion.all
  end

  # GET /daw_calificacions/1
  # GET /daw_calificacions/1.json
  def show
  end

  # GET /daw_calificacions/new
  def new
    @daw_calificacion = DawCalificacion.new
  end

  # GET /daw_calificacions/1/edit
  def edit
  end

  # POST /daw_calificacions
  # POST /daw_calificacions.json
  def create
    @daw_calificacion = DawCalificacion.new(daw_calificacion_params)

    respond_to do |format|
      if @daw_calificacion.save
        format.html { redirect_to @daw_calificacion, notice: 'Daw calificacion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_calificacion }
      else
        format.html { render :new }
        format.json { render json: @daw_calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_calificacions/1
  # PATCH/PUT /daw_calificacions/1.json
  def update
    respond_to do |format|
      if @daw_calificacion.update(daw_calificacion_params)
        format.html { redirect_to @daw_calificacion, notice: 'Daw calificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_calificacion }
      else
        format.html { render :edit }
        format.json { render json: @daw_calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_calificacions/1
  # DELETE /daw_calificacions/1.json
  def destroy
    @daw_calificacion.destroy
    respond_to do |format|
      format.html { redirect_to daw_calificacions_url, notice: 'Daw calificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_calificacion
      @daw_calificacion = DawCalificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_calificacion_params
      params.require(:daw_calificacion).permit(:calif_notaObtenida, :calif_presento, :calif_fecha)
    end
end
