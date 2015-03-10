class DawMateAcadsController < ApplicationController
  before_action :set_daw_mate_acad, only: [:show, :edit, :update, :destroy]

  # GET /daw_mate_acads
  # GET /daw_mate_acads.json
  def index
    @daw_mate_acads = DawMateAcad.all
  end

  # GET /daw_mate_acads/1
  # GET /daw_mate_acads/1.json
  def show
  end

  # GET /daw_mate_acads/new
  def new
    @daw_mate_acad = DawMateAcad.new
  end

  # GET /daw_mate_acads/1/edit
  def edit
  end

  # POST /daw_mate_acads
  # POST /daw_mate_acads.json
  def create
    @daw_mate_acad = DawMateAcad.new(daw_mate_acad_params)

    respond_to do |format|
      if @daw_mate_acad.save
        format.html { redirect_to @daw_mate_acad, notice: 'Daw mate acad was successfully created.' }
        format.json { render :show, status: :created, location: @daw_mate_acad }
      else
        format.html { render :new }
        format.json { render json: @daw_mate_acad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_mate_acads/1
  # PATCH/PUT /daw_mate_acads/1.json
  def update
    respond_to do |format|
      if @daw_mate_acad.update(daw_mate_acad_params)
        format.html { redirect_to @daw_mate_acad, notice: 'Daw mate acad was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_mate_acad }
      else
        format.html { render :edit }
        format.json { render json: @daw_mate_acad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_mate_acads/1
  # DELETE /daw_mate_acads/1.json
  def destroy
    @daw_mate_acad.destroy
    respond_to do |format|
      format.html { redirect_to daw_mate_acads_url, notice: 'Daw mate acad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_mate_acad
      @daw_mate_acad = DawMateAcad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_mate_acad_params
      params[:daw_mate_acad]
    end
end
