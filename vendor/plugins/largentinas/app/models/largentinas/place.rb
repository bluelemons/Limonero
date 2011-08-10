module Largentinas
  class Place < ActiveRecord::Base
    belongs_to :place
    has_many :places
  end
end
