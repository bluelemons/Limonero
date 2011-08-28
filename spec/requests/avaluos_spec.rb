# coding: utf-8
require 'spec_helper'

feature 'Valuación de lotes' do
  background do
    Factory(:lote)
  end

  scenario "Carga del avaluo de un lote" do
    visit lotes_path(@lote)
#    response.should match(/No dispone de un avaluo/)
#    click_link "Actualizar precio"
#    response.status.should be(200)
  end
end
