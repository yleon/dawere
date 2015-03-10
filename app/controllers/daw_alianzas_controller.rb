class DawAlianzasController < ApplicationController
  before_action :set_daw_alianza, only: [:show, :edit, :update, :destroy]

  # GET /daw_alianzas
  # GET /daw_alianzas.json
  def index
    @daw_alianzas = DawAlianza.all
  end

  # GET /daw_alianzas/1
  # GET /daw_alianzas/1.json
  def show
  end

  # GET /daw_alianzas/new
  def new
    @daw_alianza = DawAlianza.new
  end

  # GET /daw_alianzas/1/edit
  def edit
  end

  # POST /daw_alianzas
  # POST /daw_alianzas.json
  def create
    @daw_alianza = DawAlianza.new(daw_alianza_params)

    respond_to do |format|
      if @daw_alianza.save
        format.html { redirect_to @daw_alianza, notice: 'Daw alianza was successfully created.' }
        format.json { render :show, status: :created, location: @daw_alianza }
      else
        format.html { render :new }
        format.json { render json: @daw_alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_alianzas/1
  # PATCH/PUT /daw_alianzas/1.json
  def update
    respond_to do |format|
      if @daw_alianza.update(daw_alianza_params)
        format.html { redirect_to @daw_alianza, notice: 'Daw alianza was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_alianza }
      else
        format.html { render :edit }
        format.json { render json: @daw_alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_alianzas/1
  # DELETE /daw_alianzas/1.json
  def destroy
    @daw_alianza.destroy
    respond_to do |format|
      format.html { redirect_to daw_alianzas_url, notice: 'Daw alianza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_alianza
      @daw_alianza = DawAlianza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_alianza_params
      params.require(:daw_alianza).permit(:ali_tipojuridico)
    end
end
