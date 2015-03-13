class DawLogTransaccionsController < ApplicationController
  before_action :set_daw_log_transaccion, only: [:show, :edit, :update, :destroy]

  # GET /daw_log_transaccions
  # GET /daw_log_transaccions.json
  def index
    @daw_log_transaccions = DawLogTransaccion.all
  end

  # GET /daw_log_transaccions/1
  # GET /daw_log_transaccions/1.json
  def show
  end

  # GET /daw_log_transaccions/new
  def new
    @daw_log_transaccion = DawLogTransaccion.new
  end

  # GET /daw_log_transaccions/1/edit
  def edit
  end

  # POST /daw_log_transaccions
  # POST /daw_log_transaccions.json
  def create
    @daw_log_transaccion = DawLogTransaccion.new(daw_log_transaccion_params)

    respond_to do |format|
      if @daw_log_transaccion.save
        format.html { redirect_to @daw_log_transaccion, notice: 'Nueva registro de transaccion exitosa.' }
        format.json { render :show, status: :created, location: @daw_log_transaccion }
      else
        format.html { render :new }
        format.json { render json: @daw_log_transaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_log_transaccions/1
  # PATCH/PUT /daw_log_transaccions/1.json
  def update
    respond_to do |format|
      if @daw_log_transaccion.update(daw_log_transaccion_params)
        format.html { redirect_to @daw_log_transaccion, notice: 'Modificación log de transacción exitosa' }
        format.json { render :show, status: :ok, location: @daw_log_transaccion }
      else
        format.html { render :edit }
        format.json { render json: @daw_log_transaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_log_transaccions/1
  # DELETE /daw_log_transaccions/1.json
  def destroy
    @daw_log_transaccion.destroy
    respond_to do |format|
      format.html { redirect_to daw_log_transaccions_url, notice: 'Daw log transaccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_log_transaccion
      @daw_log_transaccion = DawLogTransaccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_log_transaccion_params
      params.require(:daw_log_transaccion).permit(:logt_sesion, :logt_descripcion, :logt_fecha, :logt_estado, :logt_transaccion, :logt_argumento1, :logt_argumento2)
    end
end
