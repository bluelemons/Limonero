# transforma los text fields que tienen la clase 'datepicker' en cuadro de texto con seleccion de fecha.
# mas info en http://jqueryui.com/demos/datepicker/

$(->$( ".datepicker" ).datepicker({ dateFormat: 'dd-mm-yy' });)
