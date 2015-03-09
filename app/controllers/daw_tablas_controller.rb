class DawTablasController < ApplicationController
  before_action :set_daw_tabla, only: [:show, :edit, :update, :destroy]

  # GET /daw_tablas
  # GET /daw_tablas.json
  def index
    @daw_tablas = DawTabla.all
  end

  # GET /daw_tablas/1
  # GET /daw_tablas/1.json
  def show
  end

  # GET /daw_tablas/new
  def new
    @daw_tabla = DawTabla.new
  end

  # GET /daw_tablas/1/edit
  def edit
  end

  # POST /daw_tablas
  # POST /daw_tablas.json
  def create
    @daw_tabla = DawTabla.new(daw_tabla_params)

    respond_to do |format|
      if @daw_tabla.save
        format.html { redirect_to @daw_tabla, notice: 'Daw tabla was successfully created.' }
        format.json { render :show, status: :created, location: @daw_tabla }
      else
        format.html { render :new }
        format.json { render json: @daw_tabla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_tablas/1
  # PATCH/PUT /daw_tablas/1.json
  def update
    respond_to do |format|
      if @daw_tabla.update(daw_tabla_params)
        format.html { redirect_to @daw_tabla, notice: 'Daw tabla was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_tabla }
      else
        format.html { render :edit }
        format.json { render json: @daw_tabla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_tablas/1
  # DELETE /daw_tablas/1.json
  def destroy
    @daw_tabla.destroy
    respond_to do |format|
      format.html { redirect_to daw_tablas_url, notice: 'Daw tabla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_tabla
      @daw_tabla = DawTabla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_tabla_params
      params.require(:daw_tabla).permit(:tab_nombre, :tab_nemonico)
    end
end
