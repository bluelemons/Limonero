class LotesController < InheritedResources::Base

  # GET /lotes
  # GET /lotes.json
  def index
    @search = Lote.search(params[:search])
    @lotes = @search.page(params[:page])
    index!
  end

  # GET /lotes/1
  # GET /lotes/1.json
  def show
    @lote = Lote.find(params[:id])
    @contrato = @lote.try(:contrato)
    @people = @contrato.try(:compradores)
    show!
  end

end
