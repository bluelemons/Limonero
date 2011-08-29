require 'spec_helper'

describe "lotes/show.html.erb" do
  before(:each) do
    @lote = assign(:lote, stub_model(Lote,
      :manzana => "Manzana",
      :loteo => "Loteo",
      :parcela => "Parcela",
      :partida => "Partida"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/Manzana/)
    rendered.should match(/Loteo/)
    rendered.should match(/Parcela/)
    rendered.should match(/Partida/)
  end

  context "si el lote no tiene avaluo" do
    it "muestra un link para crear el avaluo" do
      pending
      render
      assert_select 'a', 'Ingresar Avaluo'
    end
  end

  context "si el lote tiene avaluo" do
    before(:each) do
      @lote.stub(:avaluo) { stub_model(Avaluo,
        :ncuotas => 1,
        :cuota_cents => 1,
        :cuota_inicial => 1,
        :cuota_currency => "Cuota Currency",
        :interes => 1.5,
        :lote_id => 1,
        :observaciones => "MyText") }
    end

    it "muestra un link para actualizar el avaluo" do
      pending
      render
      assert_select 'a', 'Actualizar Avaluo'
    end
  end
end
