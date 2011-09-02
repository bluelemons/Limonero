class ContratosController < ApplicationController
  # GET /contratos
  # GET /contratos.json
  def index
    @search = Contrato.search(params[:search])
    @contratos = @search.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contratos }
    end
  end

  # GET /lote/1/contrato
  # GET /lote/1/contrato.json
  def show
    find_lote_contrato

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contrato }
    end
  end

  # GET /lote/1/contrato/new
  # GET /lote/1/contrato/new.json
  def new
    find_lote
    @contrato = @lote.build_contrato

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contrato }
    end
  end

  # GET /lote/1/contrato/edit
  def edit
    find_lote_contrato
  end

  # POST /lote/1/contrato
  # POST /lote/1/contrato.json
  def create
    find_lote
    @contrato = @lote.build_contrato(params[:contrato])

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to @contrato, notice: 'Contrato was successfully created.' }
        format.json { render json: @contrato, status: :created, location: @contrato }
      else
        format.html { render action: "new" }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lote/1/contrato
  # PUT /lote/1/contrato.json
  def update
    find_lote_contrato

    respond_to do |format|
      if @contrato.update_attributes(params[:contrato])
        format.html { redirect_to @contrato, notice: 'Contrato was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lote/1/contrato
  # DELETE /lote/1/contrato.json
  def destroy
    find_lote_contrato
    @contrato.destroy

    respond_to do |format|
      format.html { redirect_to @lote }
      format.json { head :ok }
    end
  end

  protected

  # Busca el contrato correspondiente a el @lote
  def find_lote_contrato
    find_lote
    @contrato = @lote.contrato
  end

  def find_lote
    @lote = Lote.find(params[:lote_id])
  end
end
