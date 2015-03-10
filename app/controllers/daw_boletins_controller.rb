class DawBoletinsController < ApplicationController
  before_action :set_daw_boletin, only: [:show, :edit, :update, :destroy]

  # GET /daw_boletins
  # GET /daw_boletins.json
  def index
    @daw_boletins = DawBoletin.all
  end

  # GET /daw_boletins/1
  # GET /daw_boletins/1.json
  def show
  end

  # GET /daw_boletins/new
  def new
    @daw_boletin = DawBoletin.new
  end

  # GET /daw_boletins/1/edit
  def edit
  end

  # POST /daw_boletins
  # POST /daw_boletins.json
  def create
    @daw_boletin = DawBoletin.new(daw_boletin_params)

    respond_to do |format|
      if @daw_boletin.save
        format.html { redirect_to @daw_boletin, notice: 'Daw boletin was successfully created.' }
        format.json { render :show, status: :created, location: @daw_boletin }
      else
        format.html { render :new }
        format.json { render json: @daw_boletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_boletins/1
  # PATCH/PUT /daw_boletins/1.json
  def update
    respond_to do |format|
      if @daw_boletin.update(daw_boletin_params)
        format.html { redirect_to @daw_boletin, notice: 'Daw boletin was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_boletin }
      else
        format.html { render :edit }
        format.json { render json: @daw_boletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_boletins/1
  # DELETE /daw_boletins/1.json
  def destroy
    @daw_boletin.destroy
    respond_to do |format|
      format.html { redirect_to daw_boletins_url, notice: 'Daw boletin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_boletin
      @daw_boletin = DawBoletin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_boletin_params
      params.require(:daw_boletin).permit(:bltin_nota, :bltin_progresoAsist, :bltin_progresoEval, :bltin_porcentaje, :bltin_fechafin)
    end
end
