class Payment < ActiveRecord::Base
  belongs_to :avaluo
  has_many :contratos
end
