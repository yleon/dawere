class DawComunicadosController < ApplicationController
  before_action :set_daw_comunicado, only: [:show, :edit, :update, :destroy]

  # GET /daw_comunicados
  # GET /daw_comunicados.json
  def index
    @daw_comunicados = DawComunicado.all
  end

  # GET /daw_comunicados/1
  # GET /daw_comunicados/1.json
  def show
  end

  # GET /daw_comunicados/new
  def new
    @daw_comunicado = DawComunicado.new
  end

  # GET /daw_comunicados/1/edit
  def edit
  end

  # POST /daw_comunicados
  # POST /daw_comunicados.json
  def create
    @daw_comunicado = DawComunicado.new(daw_comunicado_params)

    respond_to do |format|
      if @daw_comunicado.save
        format.html { redirect_to @daw_comunicado, notice: 'Daw comunicado was successfully created.' }
        format.json { render :show, status: :created, location: @daw_comunicado }
      else
        format.html { render :new }
        format.json { render json: @daw_comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_comunicados/1
  # PATCH/PUT /daw_comunicados/1.json
  def update
    respond_to do |format|
      if @daw_comunicado.update(daw_comunicado_params)
        format.html { redirect_to @daw_comunicado, notice: 'Daw comunicado was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_comunicado }
      else
        format.html { render :edit }
        format.json { render json: @daw_comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_comunicados/1
  # DELETE /daw_comunicados/1.json
  def destroy
    @daw_comunicado.destroy
    respond_to do |format|
      format.html { redirect_to daw_comunicados_url, notice: 'Daw comunicado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_comunicado
      @daw_comunicado = DawComunicado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_comunicado_params
      params.require(:daw_comunicado).permit(:com_nombre, :com_texto, :com_tipocomunicado, :com_estado, :com_fechaenvio)
    end
end
