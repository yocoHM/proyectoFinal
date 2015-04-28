class PedidoObrasController < ApplicationController
  before_action :set_pedido_obra, only: [:show, :edit, :update, :destroy]

  # GET /pedido_obras
  # GET /pedido_obras.json
  def index
    @pedido_obras = PedidoObra.all
  end

  # GET /pedido_obras/1
  # GET /pedido_obras/1.json
  def show
  end

  # GET /pedido_obras/new
  def new
    @pedido_obra = PedidoObra.new
  end

  # GET /pedido_obras/1/edit
  def edit
  end

  # POST /pedido_obras
  # POST /pedido_obras.json
  def create
    @pedido_obra = PedidoObra.new(pedido_obra_params)

    respond_to do |format|
      if @pedido_obra.save
        format.html { redirect_to @pedido_obra, notice: 'Pedido obra was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_obra }
      else
        format.html { render :new }
        format.json { render json: @pedido_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_obras/1
  # PATCH/PUT /pedido_obras/1.json
  def update
    respond_to do |format|
      if @pedido_obra.update(pedido_obra_params)
        format.html { redirect_to @pedido_obra, notice: 'Pedido obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_obra }
      else
        format.html { render :edit }
        format.json { render json: @pedido_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_obras/1
  # DELETE /pedido_obras/1.json
  def destroy
    @pedido_obra.destroy
    respond_to do |format|
      format.html { redirect_to pedido_obras_url, notice: 'Pedido obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_obra
      @pedido_obra = PedidoObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_obra_params
      params[:pedido_obra]
    end
end
