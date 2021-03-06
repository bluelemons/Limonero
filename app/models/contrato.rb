class Contrato < ActiveRecord::Base

  belongs_to :lote
  has_many :pagos
  has_and_belongs_to_many :compradores, :class_name => "Personas::Person",
                          :join_table => :compradores, :uniq => true

  attr_reader :compradores_tokens

  def compradores_tokens=(ids)
    self.comprador_ids = ids.split(",")
  end

  def cuotas_restantes

    if ncuotas
      ncuotas - pagos.count
    else
      0
    end
  end

end

