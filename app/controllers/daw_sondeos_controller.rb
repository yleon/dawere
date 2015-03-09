class DawSondeosController < ApplicationController
  before_action :set_daw_sondeo, only: [:show, :edit, :update, :destroy]

  # GET /daw_sondeos
  # GET /daw_sondeos.json
  def index
    @daw_sondeos = DawSondeo.all
  end

  # GET /daw_sondeos/1
  # GET /daw_sondeos/1.json
  def show
  end

  # GET /daw_sondeos/new
  def new
    @daw_sondeo = DawSondeo.new
  end

  # GET /daw_sondeos/1/edit
  def edit
  end

  # POST /daw_sondeos
  # POST /daw_sondeos.json
  def create
    @daw_sondeo = DawSondeo.new(daw_sondeo_params)

    respond_to do |format|
      if @daw_sondeo.save
        format.html { redirect_to @daw_sondeo, notice: 'Daw sondeo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_sondeo }
      else
        format.html { render :new }
        format.json { render json: @daw_sondeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_sondeos/1
  # PATCH/PUT /daw_sondeos/1.json
  def update
    respond_to do |format|
      if @daw_sondeo.update(daw_sondeo_params)
        format.html { redirect_to @daw_sondeo, notice: 'Daw sondeo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_sondeo }
      else
        format.html { render :edit }
        format.json { render json: @daw_sondeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_sondeos/1
  # DELETE /daw_sondeos/1.json
  def destroy
    @daw_sondeo.destroy
    respond_to do |format|
      format.html { redirect_to daw_sondeos_url, notice: 'Daw sondeo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_sondeo
      @daw_sondeo = DawSondeo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_sondeo_params
      params.require(:daw_sondeo).permit(:son_nombre, :son_descripcion, :son_tipoencuesta)
    end
end
