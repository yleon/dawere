class DawPeriodoAcadsController < ApplicationController
  before_action :set_daw_periodo_acad, only: [:show, :edit, :update, :destroy]

  # GET /daw_periodo_acads
  # GET /daw_periodo_acads.json
  def index
    @daw_periodo_acads = DawPeriodoAcad.all
  end

  # GET /daw_periodo_acads/1
  # GET /daw_periodo_acads/1.json
  def show
  end

  # GET /daw_periodo_acads/new
  def new
    @daw_periodo_acad = DawPeriodoAcad.new
  end

  # GET /daw_periodo_acads/1/edit
  def edit
  end

  # POST /daw_periodo_acads
  # POST /daw_periodo_acads.json
  def create
    @daw_periodo_acad = DawPeriodoAcad.new(daw_periodo_acad_params)

    respond_to do |format|
      if @daw_periodo_acad.save
        format.html { redirect_to @daw_periodo_acad, notice: 'Daw periodo acad was successfully created.' }
        format.json { render :show, status: :created, location: @daw_periodo_acad }
      else
        format.html { render :new }
        format.json { render json: @daw_periodo_acad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_periodo_acads/1
  # PATCH/PUT /daw_periodo_acads/1.json
  def update
    respond_to do |format|
      if @daw_periodo_acad.update(daw_periodo_acad_params)
        format.html { redirect_to @daw_periodo_acad, notice: 'Daw periodo acad was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_periodo_acad }
      else
        format.html { render :edit }
        format.json { render json: @daw_periodo_acad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_periodo_acads/1
  # DELETE /daw_periodo_acads/1.json
  def destroy
    @daw_periodo_acad.destroy
    respond_to do |format|
      format.html { redirect_to daw_periodo_acads_url, notice: 'Daw periodo acad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_periodo_acad
      @daw_periodo_acad = DawPeriodoAcad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_periodo_acad_params
      params[:daw_periodo_acad]
    end
end
