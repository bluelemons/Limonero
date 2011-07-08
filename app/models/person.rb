class Person < ActiveRecord::Base

  #association
  belongs_to :nacionalidad
  belongs_to :tdoc
  belongs_to :civil

  #validation
  validates_presence_of :documento, :apellido

end

