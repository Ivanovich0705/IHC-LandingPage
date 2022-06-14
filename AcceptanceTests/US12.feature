
US012

Feature: Recorrido Interactivo 
    Como <usuario> quiero acceder a un recorrido
    interactivo para mejorar mi experiencia de recorrido 

    Scenario:  Usuario cuenta con buena señal 
        Dado que el <usuario> se encuentra en Guía Virtual 
        Y cuenta con buena <señal>  
        Entonces el <guía virtual> narrará el recorrido y aumentará la realidad de los objetos enfocados de forma divertida 

        Examples:
        |usuario|señal|guía virtual|
        |Liliana|estable|narración de recorrido y aumento de la realidad estable|

    Scenario:  Usuario no cuenta con buena señal 
        Dado que el <usuario> se encuentra en Guía Virtual
        Y no cuenta con buena <señal>  
        Entonces el <guía virtual> tardará en cargar y no entrará en funcionamiento

        Examples:
        |usuario|señal|guía virtual|
        |Liliana|inestable|sin funcionamiento|


        