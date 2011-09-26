class ContratosController < InheritedResources::Base
  belongs_to :lote, :singleton => true, :optional => true

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
end
