class DawCodigosController < ApplicationController
  before_action :set_daw_codigo, only: [:show, :edit, :update, :destroy]

  # GET /daw_codigos
  # GET /daw_codigos.json
  def index
    @daw_codigos = DawCodigo.all
  end

  # GET /daw_codigos/1
  # GET /daw_codigos/1.json
  def show
  end

  # GET /daw_codigos/new
  def new
    @daw_codigo = DawCodigo.new
  end

  # GET /daw_codigos/1/edit
  def edit
  end

  # POST /daw_codigos
  # POST /daw_codigos.json
  def create
    @daw_codigo = DawCodigo.new(daw_codigo_params)

    respond_to do |format|
      if @daw_codigo.save
        format.html { redirect_to @daw_codigo, notice: 'Daw codigo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_codigo }
      else
        format.html { render :new }
        format.json { render json: @daw_codigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_codigos/1
  # PATCH/PUT /daw_codigos/1.json
  def update
    respond_to do |format|
      if @daw_codigo.update(daw_codigo_params)
        format.html { redirect_to @daw_codigo, notice: 'Daw codigo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_codigo }
      else
        format.html { render :edit }
        format.json { render json: @daw_codigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_codigos/1
  # DELETE /daw_codigos/1.json
  def destroy
    @daw_codigo.destroy
    respond_to do |format|
      format.html { redirect_to daw_codigos_url, notice: 'Daw codigo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_codigo
      @daw_codigo = DawCodigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_codigo_params
      params.require(:daw_codigo).permit(:cod_valor, :cod_estado, :daw_promocion_id)
    end
end
