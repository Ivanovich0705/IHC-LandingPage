
US014

Feature: Visualización de atracciones y sus rutas

    Como <usuario> quiero visualizar las atracciones
    del centro recreacional para facilitar mi
    acceso a estas actividades  

    Scenario: Usuario solicita rutas para llegar a atracción 
        Dado que el <usuario> se encuentra en Mapa GPS  
        Y selecciona <Atracciones>
        Y seleccione una <atracción> del mapa  
        Entonces el sistema muestra la opción "Ver Rutas" 
        Cuando el usuario seleccione <Ver Rutas> 
        Entonces el sistema muestra las <rutas> de llegada 

        Examples:
        |Atracciones|
        |Museo de Sitio:Ernst W. Middenford, estado:Abierto, horario:9:00-13:00|
        |El botánico, estado:Abierto, horario:8:00-15:00|


        |usuario|atracción seleccionada|rutas|
        |Lilianal|El botánico, estado:Abierto, horario:8:00-15:00|rutas señaladas en el mapa interactivo|
        