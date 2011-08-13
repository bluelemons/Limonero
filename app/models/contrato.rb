class Contrato < ActiveRecord::Base
  belongs_to :person, :class_name => "Personas::Person"
  accepts_nested_attributes_for :person
  belongs_to :payment
end
