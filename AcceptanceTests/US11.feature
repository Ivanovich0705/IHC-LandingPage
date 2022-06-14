
US011

Feature:Visualización en el mapa de partes recorridas y servicios en tiempo real  
    Como <usuario> quiero conocer que partes del
    centro recreacional ya he recorrido y que servicios 
    puedo encontrar para optimizar mi recorrido 

    Scenario: Usuario cuenta buena señal   
        Dado que el <usuario> se encuentra en Mapa GPS 
        Y cuenta con buena <señal> 
        Entonces la aplicación mostrara los servicios del centro e ira marcando automáticamente los lugares recorridos en el <mapa>

        Examples:
        |usuario|señal|mapa interactivo|
        |Liliana|estable|mapa con servicios y lugares recorridos|


    Scenario: Usuario no cuenta buena señal 
        Dado que el <usuario> se encuentra en Mapa GPS  
        Y no cuenta con buena <señal>
        Entonces la aplicación mostrará los servicios del centro, pero tardará en marcar los lugares recorridos en el <mapa>

        Examples:
        |usuario|señal|mapa interactivo|
        |Liliana|inestable|mapa con servicios y lugares recorrido con retraso|

        

        