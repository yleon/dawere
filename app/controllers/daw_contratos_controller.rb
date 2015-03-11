class DawContratosController < ApplicationController
  before_action :set_daw_contrato, only: [:show, :edit, :update, :destroy]

  # GET /daw_contratos
  # GET /daw_contratos.json
  def index
    @daw_contratos = DawContrato.all
  end

  # GET /daw_contratos/1
  # GET /daw_contratos/1.json
  def show
  end

  # GET /daw_contratos/new
  def new
    @daw_contrato = DawContrato.new
  end

  # GET /daw_contratos/1/edit
  def edit
  end

  # POST /daw_contratos
  # POST /daw_contratos.json
  def create
    @daw_contrato = DawContrato.new(daw_contrato_params)

    respond_to do |format|
      if @daw_contrato.save
        format.html { redirect_to @daw_contrato, notice: 'Daw contrato was successfully created.' }
        format.json { render :show, status: :created, location: @daw_contrato }
      else
        format.html { render :new }
        format.json { render json: @daw_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_contratos/1
  # PATCH/PUT /daw_contratos/1.json
  def update
    respond_to do |format|
      if @daw_contrato.update(daw_contrato_params)
        format.html { redirect_to @daw_contrato, notice: 'Daw contrato was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_contrato }
      else
        format.html { render :edit }
        format.json { render json: @daw_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_contratos/1
  # DELETE /daw_contratos/1.json
  def destroy
    @daw_contrato.destroy
    respond_to do |format|
      format.html { redirect_to daw_contratos_url, notice: 'Daw contrato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_contrato
      @daw_contrato = DawContrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_contrato_params
      params.require(:daw_contrato).permit(:cont_tiempo, :cont_fechaini, :cont_fechafin, :cont_archivo, :cont_descripcion, :daw_prof_asist_id, :daw_curso_id)
    end
end
