class DawArchivosController < ApplicationController
  before_action :set_daw_archivo, only: [:show, :edit, :update, :destroy]

  # GET /daw_archivos
  # GET /daw_archivos.json
  def index
    @daw_archivos = DawArchivo.all
  end

  # GET /daw_archivos/1
  # GET /daw_archivos/1.json
  def show
  end

  # GET /daw_archivos/new
  def new
    @daw_archivo = DawArchivo.new
  end

  # GET /daw_archivos/1/edit
  def edit
  end

  # POST /daw_archivos
  # POST /daw_archivos.json
  def create
    @daw_archivo = DawArchivo.new(daw_archivo_params)

    respond_to do |format|
      if @daw_archivo.save
        format.html { redirect_to @daw_archivo, notice: 'Daw archivo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_archivo }
      else
        format.html { render :new }
        format.json { render json: @daw_archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_archivos/1
  # PATCH/PUT /daw_archivos/1.json
  def update
    respond_to do |format|
      if @daw_archivo.update(daw_archivo_params)
        format.html { redirect_to @daw_archivo, notice: 'Daw archivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_archivo }
      else
        format.html { render :edit }
        format.json { render json: @daw_archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_archivos/1
  # DELETE /daw_archivos/1.json
  def destroy
    @daw_archivo.destroy
    respond_to do |format|
      format.html { redirect_to daw_archivos_url, notice: 'Daw archivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_archivo
      @daw_archivo = DawArchivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_archivo_params
      params[:daw_archivo]
    end
end
