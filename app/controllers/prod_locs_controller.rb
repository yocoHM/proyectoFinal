class ProdLocsController < ApplicationController
  before_action :set_prod_loc, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /prod_locs
  # GET /prod_locs.json
  def index
    @prod_locs = ProdLoc.all
  end

  # GET /prod_locs/1
  # GET /prod_locs/1.json
  def show
  end

  # GET /prod_locs/new
  def new
    @prod_loc = ProdLoc.new(localidad_id: params[:localidad_id])
  end

  # GET /prod_locs/1/edit
  def edit
  end

  # POST /prod_locs
  # POST /prod_locs.json
  def create
    @prod_loc = ProdLoc.new(prod_loc_params)

    respond_to do |format|
      if @prod_loc.save
        format.html { redirect_to localidad_path(@prod_loc.localidad_id), notice: 'Se agregó el producto satisfactoriamente.' }
        format.json { render :show, status: :created, location: @prod_loc }
      else
        format.html { render :new }
        format.json { render json: @prod_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_locs/1
  # PATCH/PUT /prod_locs/1.json
  def update
    respond_to do |format|
      if @prod_loc.update(prod_loc_params)
        format.html { redirect_to @prod_loc, notice: 'Prod loc was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_loc }
      else
        format.html { render :edit }
        format.json { render json: @prod_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_locs/1
  # DELETE /prod_locs/1.json
  def destroy
    @prod_loc.destroy
    respond_to do |format|
      format.html { redirect_to prod_locs_url, notice: 'Prod loc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_loc
      @prod_loc = ProdLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prod_loc_params
      params.require(:prod_loc).permit(:m2, :localidad_id, :producto_id)
    end
end
