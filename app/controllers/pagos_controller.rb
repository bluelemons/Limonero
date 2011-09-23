class PagosController < ApplicationController
  # GET /pagos
  # GET /pagos.json
  def index
    @search = Pago.search(:contrato_lote_id_eq => params[:lote_id] )
    @pagos = @search.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pagos }
    end
  end

  # GET /pagos/1
  # GET /pagos/1.json
  def show
    @pago = Pago.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pago }
    end
  end

  # GET /pagos/new
  # GET /pagos/new.json
  def new
    @pago = Pago.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pago }
    end
  end

  # GET /pagos/1/edit
  def edit
    @pago = Pago.find(params[:id])
  end

  # POST /pagos
  # POST /pagos.json
  def create
    find_pago_contrato
    @pago = Pago.new(params[:pago])
    @pago.contrato = @contrato
    respond_to do |format|
      if @pago.save
        format.html { redirect_to @pago, notice: 'Pago was successfully created.' }
        format.json { render json: @pago, status: :created, location: @pago }
      else
        format.html { render action: "new" }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pagos/1
  # PUT /pagos/1.json
  def update
    @pago = Pago.find(params[:id])

    respond_to do |format|
      if @pago.update_attributes(params[:pago])
        format.html { redirect_to @pago, notice: 'Pago was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1
  # DELETE /pagos/1.json
  def destroy
    @pago = Pago.find(params[:id])
    @pago.destroy

    respond_to do |format|
      format.html { redirect_to pagos_url }
      format.json { head :ok }
    end
  end
  protected

  def find_pago_contrato
    find_lote
    @contrato = @lote.contrato
  end

  def find_lote
    @lote = Lote.find(params[:lote_id])
  end
end