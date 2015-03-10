class DawReclamosController < ApplicationController
  before_action :set_daw_reclamo, only: [:show, :edit, :update, :destroy]

  # GET /daw_reclamos
  # GET /daw_reclamos.json
  def index
    @daw_reclamos = DawReclamo.all
  end

  # GET /daw_reclamos/1
  # GET /daw_reclamos/1.json
  def show
  end

  # GET /daw_reclamos/new
  def new
    @daw_reclamo = DawReclamo.new
  end

  # GET /daw_reclamos/1/edit
  def edit
  end

  # POST /daw_reclamos
  # POST /daw_reclamos.json
  def create
    @daw_reclamo = DawReclamo.new(daw_reclamo_params)

    respond_to do |format|
      if @daw_reclamo.save
        format.html { redirect_to @daw_reclamo, notice: 'Daw reclamo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_reclamo }
      else
        format.html { render :new }
        format.json { render json: @daw_reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_reclamos/1
  # PATCH/PUT /daw_reclamos/1.json
  def update
    respond_to do |format|
      if @daw_reclamo.update(daw_reclamo_params)
        format.html { redirect_to @daw_reclamo, notice: 'Daw reclamo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_reclamo }
      else
        format.html { render :edit }
        format.json { render json: @daw_reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_reclamos/1
  # DELETE /daw_reclamos/1.json
  def destroy
    @daw_reclamo.destroy
    respond_to do |format|
      format.html { redirect_to daw_reclamos_url, notice: 'Daw reclamo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_reclamo
      @daw_reclamo = DawReclamo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_reclamo_params
      params.require(:daw_reclamo).permit(:recl_descripcion, :recl_fecha, :recl_atendido, :recl_tiporeclamo, :daw_persona_id)
    end
end
