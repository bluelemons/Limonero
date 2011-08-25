# coding: utf-8
require 'spec_helper'

feature "Gestión de lotes" do
  scenario "Carga de un lote" do
    visit "/lotes"
    click_link "Cargar un nuevo Lote"
    fill_in "Manzana", :with => "12"
    fill_in "Loteo", :with => "23"
    fill_in "Parcela", :with => "1"
    fill_in "Partida", :with => "testing-12"
    click_button "Crear Lote"
    page.should have_selector("p#notice", :text => 'Lote was successfully created.')
  end
end
