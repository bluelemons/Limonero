class Lot < ActiveRecord::Base
  has_many :avaluos

  def titular
    payment_actual.try(:contratos).try(:first).try(:person).try(:name)
  end

  def estado
    if titular
      "Vendido"
    else
      "Sin vender"
    end
  end

  def pagable?
    (titular)
  end

  def payment_actual
    try(:avaluos).try(:last).try(:payments).try(:last)
  end

end
