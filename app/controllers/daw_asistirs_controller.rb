class DawAsistirsController < ApplicationController
  before_action :set_daw_asistir, only: [:show, :edit, :update, :destroy]

  # GET /daw_asistirs
  # GET /daw_asistirs.json
  def index
    @daw_asistirs = DawAsistir.all
  end

  # GET /daw_asistirs/1
  # GET /daw_asistirs/1.json
  def show
  end

  # GET /daw_asistirs/new
  def new
    @daw_asistir = DawAsistir.new
  end

  # GET /daw_asistirs/1/edit
  def edit
  end

  # POST /daw_asistirs
  # POST /daw_asistirs.json
  def create
    @daw_asistir = DawAsistir.new(daw_asistir_params)

    respond_to do |format|
      if @daw_asistir.save
        format.html { redirect_to @daw_asistir, notice: 'Daw asistir was successfully created.' }
        format.json { render :show, status: :created, location: @daw_asistir }
      else
        format.html { render :new }
        format.json { render json: @daw_asistir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_asistirs/1
  # PATCH/PUT /daw_asistirs/1.json
  def update
    respond_to do |format|
      if @daw_asistir.update(daw_asistir_params)
        format.html { redirect_to @daw_asistir, notice: 'Daw asistir was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_asistir }
      else
        format.html { render :edit }
        format.json { render json: @daw_asistir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_asistirs/1
  # DELETE /daw_asistirs/1.json
  def destroy
    @daw_asistir.destroy
    respond_to do |format|
      format.html { redirect_to daw_asistirs_url, notice: 'Daw asistir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_asistir
      @daw_asistir = DawAsistir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_asistir_params
      params.require(:daw_asistir).permit(:asist_fecha)
    end
end
