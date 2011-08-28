class Avaluo < ActiveRecord::Base
  belongs_to :lote
  has_many :contratos
end
