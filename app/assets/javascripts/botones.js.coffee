# Transforma los links en la aplicacion en botones
# Primero espesifico los path y despues llamo a la funcion button() para transformarlos
# El icono que tiene que mostrar se escribe despues de primary:
# Una lista de todos los iconos esta aca. http://jqueryui.com/themeroller/


$(->
  host ='a[href!="www."]'
  new_path = "#{host}[href*='/new']"
  edit_path = "#{host}[href*='/edit']"
  back_path = 'a:contains("Back"), a:contains("Atras")'
  destroy_path = 'a:contains("Destroy"), a:contains("Borrar")'
  menu_personas = "#menu a[href*='/personas']"
  menu_lotes ="#menu a[href*='/lotes']"
  save_path = "input:submit"

  $(host).button
    icons:
      primary: "ui-icon-search"

  $(save_path).button
    icons:
      primary: "ui-icon-disk"

  $(new_path).button
    icons:
      primary: "ui-icon-plus"

  $(edit_path).button
    icons:
      primary:"ui-icon-pencil"

  $(back_path).button
    icons:
      primary: "ui-icon-arrowthick-1-w"

  $(destroy_path).button
    icons:
      primary: "ui-icon-trash" 

  $(menu_personas).button
    icons:
      primary: "ui-icon-person"

  $(menu_lotes).button
    icons:
      primary: "ui-icon-home" 

)

