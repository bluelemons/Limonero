class Contrato < ActiveRecord::Base
  belongs_to :avaluo
  has_and_belongs_to_many :compradores, :class_name => "Personas::Person",
                          :join_table => :compradores, :uniq => true
end
