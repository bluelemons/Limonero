# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['DNI', 'CUIT', 'CUIL', 'LE' ,'LC'].each do |tipo|
  Personas::Tdoc.find_or_create_by_name tipo
end

['soltero', 'casado', 'divorciado', 'viudo'].each do |tipo|
  Personas::Civil.find_or_create_by_name tipo
end
