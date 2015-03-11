class DawOpcionsController < ApplicationController
  before_action :set_daw_opcion, only: [:show, :edit, :update, :destroy]

  # GET /daw_opcions
  # GET /daw_opcions.json
  def index
    @daw_opcions = DawOpcion.all
  end

  # GET /daw_opcions/1
  # GET /daw_opcions/1.json
  def show
  end

  # GET /daw_opcions/new
  def new
    @daw_opcion = DawOpcion.new
  end

  # GET /daw_opcions/1/edit
  def edit
  end

  # POST /daw_opcions
  # POST /daw_opcions.json
  def create
    @daw_opcion = DawOpcion.new(daw_opcion_params)

    respond_to do |format|
      if @daw_opcion.save
        format.html { redirect_to @daw_opcion, notice: 'Daw opcion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_opcion }
      else
        format.html { render :new }
        format.json { render json: @daw_opcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_opcions/1
  # PATCH/PUT /daw_opcions/1.json
  def update
    respond_to do |format|
      if @daw_opcion.update(daw_opcion_params)
        format.html { redirect_to @daw_opcion, notice: 'Daw opcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_opcion }
      else
        format.html { render :edit }
        format.json { render json: @daw_opcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_opcions/1
  # DELETE /daw_opcions/1.json
  def destroy
    @daw_opcion.destroy
    respond_to do |format|
      format.html { redirect_to daw_opcions_url, notice: 'Daw opcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_opcion
      @daw_opcion = DawOpcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_opcion_params
      params.require(:daw_opcion).permit(:opc_descripcion, :opc_correcta, :opc_motivo, :opc_tipo)
    end
end

