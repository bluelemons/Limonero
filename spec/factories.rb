FactoryGirl.define do
  
  factory :tdoc, :class => "Personas::Tdoc" do
    name "DNI"
  end

  factory :civil, :class => "Personas::Civil" do
    name "soltero"
  end

  factory :person, :class => "Personas::Person" do

    factory :juan_perez do
      apellido          "Perez"
      apellido_materno  "Fernandez"
      nombre            "Juan"
      nacimiento        "1981-01-01"
      documento         "28644242"
      association       :tdoc
      association       :civil
      observaciones     ""
    end
  end

  factory :avaluo do
  end

  factory :payment do
  end

  factory :contrato do

    factory :contrato_de_juan_perez do
      association :person, :factory => :juan_perez
    end
  end

  factory :lote, :class => Lot do
    sequence(:partida) { |n| "#{n}-virtual" }
  end
end