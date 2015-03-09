class DawLogtransaccionsController < ApplicationController
  before_action :set_daw_logtransaccion, only: [:show, :edit, :update, :destroy]

  # GET /daw_logtransaccions
  # GET /daw_logtransaccions.json
  def index
    @daw_logtransaccions = DawLogtransaccion.all
  end

  # GET /daw_logtransaccions/1
  # GET /daw_logtransaccions/1.json
  def show
  end

  # GET /daw_logtransaccions/new
  def new
    @daw_logtransaccion = DawLogtransaccion.new
  end

  # GET /daw_logtransaccions/1/edit
  def edit
  end

  # POST /daw_logtransaccions
  # POST /daw_logtransaccions.json
  def create
    @daw_logtransaccion = DawLogtransaccion.new(daw_logtransaccion_params)

    respond_to do |format|
      if @daw_logtransaccion.save
        format.html { redirect_to @daw_logtransaccion, notice: 'Daw logtransaccion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_logtransaccion }
      else
        format.html { render :new }
        format.json { render json: @daw_logtransaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_logtransaccions/1
  # PATCH/PUT /daw_logtransaccions/1.json
  def update
    respond_to do |format|
      if @daw_logtransaccion.update(daw_logtransaccion_params)
        format.html { redirect_to @daw_logtransaccion, notice: 'Daw logtransaccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_logtransaccion }
      else
        format.html { render :edit }
        format.json { render json: @daw_logtransaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_logtransaccions/1
  # DELETE /daw_logtransaccions/1.json
  def destroy
    @daw_logtransaccion.destroy
    respond_to do |format|
      format.html { redirect_to daw_logtransaccions_url, notice: 'Daw logtransaccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_logtransaccion
      @daw_logtransaccion = DawLogtransaccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_logtransaccion_params
      params.require(:daw_logtransaccion).permit(:logt_sesion, :logt_descripcion, :logt_fecha, :logt_estado, :logt_transaccion, :logt_argumento1, :logt_argumento2)
    end
end
