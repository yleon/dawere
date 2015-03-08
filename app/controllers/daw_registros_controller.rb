class DawRegistrosController < ApplicationController
  before_action :set_daw_registro, only: [:show, :edit, :update, :destroy]

  # GET /daw_registros
  # GET /daw_registros.json
  def index
    @daw_registros = DawRegistro.all
  end

  # GET /daw_registros/1
  # GET /daw_registros/1.json
  def show
  end

  # GET /daw_registros/new
  def new
    @daw_registro = DawRegistro.new
  end

  # GET /daw_registros/1/edit
  def edit
  end

  # POST /daw_registros
  # POST /daw_registros.json
  def create
    @daw_registro = DawRegistro.new(daw_registro_params)

    respond_to do |format|
      if @daw_registro.save
        format.html { redirect_to @daw_registro, notice: 'Daw registro was successfully created.' }
        format.json { render :show, status: :created, location: @daw_registro }
      else
        format.html { render :new }
        format.json { render json: @daw_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_registros/1
  # PATCH/PUT /daw_registros/1.json
  def update
    respond_to do |format|
      if @daw_registro.update(daw_registro_params)
        format.html { redirect_to @daw_registro, notice: 'Daw registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_registro }
      else
        format.html { render :edit }
        format.json { render json: @daw_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_registros/1
  # DELETE /daw_registros/1.json
  def destroy
    @daw_registro.destroy
    respond_to do |format|
      format.html { redirect_to daw_registros_url, notice: 'Daw registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_registro
      @daw_registro = DawRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_registro_params
      params.require(:daw_registro).permit(:reg_idregtab, :reg_descripcion, :reg_char, :reg_varchar, :reg_float, :reg_boolean, :reg_fecha, :reg_activo, :daw_tabla_id)
    end
end
