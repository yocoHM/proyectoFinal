class PedidoLocsController < ApplicationController
  before_action :set_pedido_loc, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /pedido_locs
  # GET /pedido_locs.json
  def index
    @pedido_locs = PedidoLoc.all
  end

  # GET /pedido_locs/1
  # GET /pedido_locs/1.json
  def show
  end

  # GET /pedido_locs/new
  def new
    @pedido_loc = PedidoLoc.new
  end

  # GET /pedido_locs/1/edit
  def edit
  end

  # POST /pedido_locs
  # POST /pedido_locs.json
  def create
    @pedido_loc = PedidoLoc.new(pedido_loc_params)

    respond_to do |format|
      if @pedido_loc.save
        format.html { redirect_to @pedido_loc, notice: 'Pedido loc was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_loc }
      else
        format.html { render :new }
        format.json { render json: @pedido_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_locs/1
  # PATCH/PUT /pedido_locs/1.json
  def update
    respond_to do |format|
      if @pedido_loc.update(pedido_loc_params)
        format.html { redirect_to @pedido_loc, notice: 'Pedido loc was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_loc }
      else
        format.html { render :edit }
        format.json { render json: @pedido_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_locs/1
  # DELETE /pedido_locs/1.json
  def destroy
    @pedido_loc.destroy
    respond_to do |format|
      format.html { redirect_to pedido_locs_url, notice: 'Pedido loc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_loc
      @pedido_loc = PedidoLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_loc_params
      params.require(:pedido_loc).permit(:obra_id, :pedido_id)
    end
end
