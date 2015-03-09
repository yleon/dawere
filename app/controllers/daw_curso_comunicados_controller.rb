class DawCursoComunicadosController < ApplicationController
  before_action :set_daw_curso_comunicado, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_comunicados
  # GET /daw_curso_comunicados.json
  def index
    @daw_curso_comunicados = DawCursoComunicado.all
  end

  # GET /daw_curso_comunicados/1
  # GET /daw_curso_comunicados/1.json
  def show
  end

  # GET /daw_curso_comunicados/new
  def new
    @daw_curso_comunicado = DawCursoComunicado.new
  end

  # GET /daw_curso_comunicados/1/edit
  def edit
  end

  # POST /daw_curso_comunicados
  # POST /daw_curso_comunicados.json
  def create
    @daw_curso_comunicado = DawCursoComunicado.new(daw_curso_comunicado_params)

    respond_to do |format|
      if @daw_curso_comunicado.save
        format.html { redirect_to @daw_curso_comunicado, notice: 'Daw curso comunicado was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_comunicado }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_comunicados/1
  # PATCH/PUT /daw_curso_comunicados/1.json
  def update
    respond_to do |format|
      if @daw_curso_comunicado.update(daw_curso_comunicado_params)
        format.html { redirect_to @daw_curso_comunicado, notice: 'Daw curso comunicado was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_comunicado }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_comunicados/1
  # DELETE /daw_curso_comunicados/1.json
  def destroy
    @daw_curso_comunicado.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_comunicados_url, notice: 'Daw curso comunicado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_comunicado
      @daw_curso_comunicado = DawCursoComunicado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_comunicado_params
      params.require(:daw_curso_comunicado).permit(:curcom_fechaenviado, :daw_comunicado_id)
    end
end
