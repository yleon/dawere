class DawDirectorsController < ApplicationController
  before_action :set_daw_director, only: [:show, :edit, :update, :destroy]

  # GET /daw_directors
  # GET /daw_directors.json
  def index
    @daw_directors = DawDirector.all
  end

  # GET /daw_directors/1
  # GET /daw_directors/1.json
  def show
  end

  # GET /daw_directors/new
  def new
    @daw_director = DawDirector.new
  end

  # GET /daw_directors/1/edit
  def edit
  end

  # POST /daw_directors
  # POST /daw_directors.json
  def create
    @daw_director = DawDirector.new(daw_director_params)

    respond_to do |format|
      if @daw_director.save
        format.html { redirect_to @daw_director, notice: 'Daw director was successfully created.' }
        format.json { render :show, status: :created, location: @daw_director }
      else
        format.html { render :new }
        format.json { render json: @daw_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_directors/1
  # PATCH/PUT /daw_directors/1.json
  def update
    respond_to do |format|
      if @daw_director.update(daw_director_params)
        format.html { redirect_to @daw_director, notice: 'Daw director was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_director }
      else
        format.html { render :edit }
        format.json { render json: @daw_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_directors/1
  # DELETE /daw_directors/1.json
  def destroy
    @daw_director.destroy
    respond_to do |format|
      format.html { redirect_to daw_directors_url, notice: 'Daw director was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_director
      @daw_director = DawDirector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_director_params
      params.require(:daw_director).permit(:dire_fechaingr)
    end
end
