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
      render
      assert_select 'a', { :count => 1, :text => 'Ingresar precio', :html => new_lote_avaluo_path(@lote) },
        'no hay link para crear el avaluo'
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
      render
      assert_select 'a', { :count => 1, :text => 'Actualizar precio', :html => edit_lote_avaluo_path(@lote) },
        'no hay link para editar el avaluo'
    end
  end
end
