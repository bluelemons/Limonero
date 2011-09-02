class Contrato < ActiveRecord::Base

  belongs_to :lote
  has_and_belongs_to_many :compradores, :class_name => "Personas::Person",
                          :join_table => :compradores, :uniq => true

  attr_reader :compradores_tokens

  def compradores_tokens=(ids)
    self.comprador_ids = ids.split(",")
  end

end

