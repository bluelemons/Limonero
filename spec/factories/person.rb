Factory.define :person do |f|
  f.apellido          "Perez"
  f.apellido_materno  "Fernandez"
  f.nombre            "Juan"
  f.nacimiento        "1981-01-01"
  f.documento         "28644242"
  f.association       :tdoc
  f.association       :nacionalidad
  f.association       :civil
  f.observaciones     ""
end

