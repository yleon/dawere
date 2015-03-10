class DawLugarsController < ApplicationController
  before_action :set_daw_lugar, only: [:show, :edit, :update, :destroy]

  # GET /daw_lugars
  # GET /daw_lugars.json
  def index
    @daw_lugars = DawLugar.all
  end

  # GET /daw_lugars/1
  # GET /daw_lugars/1.json
  def show
  end

  # GET /daw_lugars/new
  def new
    @daw_lugar = DawLugar.new
  end

  # GET /daw_lugars/1/edit
  def edit
  end

  # POST /daw_lugars
  # POST /daw_lugars.json
  def create
    @daw_lugar = DawLugar.new(daw_lugar_params)

    respond_to do |format|
      if @daw_lugar.save
        format.html { redirect_to @daw_lugar, notice: 'Daw lugar was successfully created.' }
        format.json { render :show, status: :created, location: @daw_lugar }
      else
        format.html { render :new }
        format.json { render json: @daw_lugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_lugars/1
  # PATCH/PUT /daw_lugars/1.json
  def update
    respond_to do |format|
      if @daw_lugar.update(daw_lugar_params)
        format.html { redirect_to @daw_lugar, notice: 'Daw lugar was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_lugar }
      else
        format.html { render :edit }
        format.json { render json: @daw_lugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_lugars/1
  # DELETE /daw_lugars/1.json
  def destroy
    @daw_lugar.destroy
    respond_to do |format|
      format.html { redirect_to daw_lugars_url, notice: 'Daw lugar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_lugar
      @daw_lugar = DawLugar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_lugar_params
      params.require(:daw_lugar).permit(:lugar_nombre, :lugar_tipo, :lugar_nivel, :daw_lugar_id)
    end
end
