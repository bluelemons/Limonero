module Personas
  class Address < ActiveRecord::Base
    # FIX: cuando se solucione el problema de rails.
    def self.table_name
      "personas_addresses"
    end
    belongs_to :taddress
    belongs_to :person
    #belongs_to :city
  end
end
