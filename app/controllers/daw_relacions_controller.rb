class DawRelacionsController < ApplicationController
  before_action :set_daw_relacion, only: [:show, :edit, :update, :destroy]

  # GET /daw_relacions
  # GET /daw_relacions.json
  def index
    @daw_relacions = DawRelacion.all
  end

  # GET /daw_relacions/1
  # GET /daw_relacions/1.json
  def show
  end

  # GET /daw_relacions/new
  def new
    @daw_relacion = DawRelacion.new
  end

  # GET /daw_relacions/1/edit
  def edit
  end

  # POST /daw_relacions
  # POST /daw_relacions.json
  def create
    @daw_relacion = DawRelacion.new(daw_relacion_params)

    respond_to do |format|
      if @daw_relacion.save
        format.html { redirect_to @daw_relacion, notice: 'Daw relacion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_relacion }
      else
        format.html { render :new }
        format.json { render json: @daw_relacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_relacions/1
  # PATCH/PUT /daw_relacions/1.json
  def update
    respond_to do |format|
      if @daw_relacion.update(daw_relacion_params)
        format.html { redirect_to @daw_relacion, notice: 'Daw relacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_relacion }
      else
        format.html { render :edit }
        format.json { render json: @daw_relacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_relacions/1
  # DELETE /daw_relacions/1.json
  def destroy
    @daw_relacion.destroy
    respond_to do |format|
      format.html { redirect_to daw_relacions_url, notice: 'Daw relacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_relacion
      @daw_relacion = DawRelacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_relacion_params
      params.require(:daw_relacion).permit(:rela_tiporepresentante, :daw_persona_id, :daw_persona_id)
    end
end
