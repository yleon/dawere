class DawRetirosController < ApplicationController
  before_action :set_daw_retiro, only: [:show, :edit, :update, :destroy]

  # GET /daw_retiros
  # GET /daw_retiros.json
  def index
    @daw_retiros = DawRetiro.all
  end

  # GET /daw_retiros/1
  # GET /daw_retiros/1.json
  def show
  end

  # GET /daw_retiros/new
  def new
    @daw_retiro = DawRetiro.new
  end

  # GET /daw_retiros/1/edit
  def edit
  end

  # POST /daw_retiros
  # POST /daw_retiros.json
  def create
    @daw_retiro = DawRetiro.new(daw_retiro_params)

    respond_to do |format|
      if @daw_retiro.save
        format.html { redirect_to @daw_retiro, notice: 'Daw retiro was successfully created.' }
        format.json { render :show, status: :created, location: @daw_retiro }
      else
        format.html { render :new }
        format.json { render json: @daw_retiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_retiros/1
  # PATCH/PUT /daw_retiros/1.json
  def update
    respond_to do |format|
      if @daw_retiro.update(daw_retiro_params)
        format.html { redirect_to @daw_retiro, notice: 'Daw retiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_retiro }
      else
        format.html { render :edit }
        format.json { render json: @daw_retiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_retiros/1
  # DELETE /daw_retiros/1.json
  def destroy
    @daw_retiro.destroy
    respond_to do |format|
      format.html { redirect_to daw_retiros_url, notice: 'Daw retiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_retiro
      @daw_retiro = DawRetiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_retiro_params
      params.require(:daw_retiro).permit(:ret_fecha, :ret_motivo, :daw_persona_id)
    end
end
