class PagosController < InheritedResources::Base
  belongs_to :contrato, :optional => true

  # GET /pagos
  # GET /pagos.json
  def index
    @search = Pago.search(:contrato_lote_id_eq => params[:lote_id] )
    @pagos = @search.page(params[:page])

    index!
  end
end
