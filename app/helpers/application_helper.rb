module ApplicationHelper
  #NOTES: debido a que los singular resources no andan tan bien
  def lote_contratos_path(*args)
    lote_contrato_path(*args)
  end
end
