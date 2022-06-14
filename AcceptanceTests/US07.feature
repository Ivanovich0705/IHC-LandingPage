
US07

Feature: Guía de rutas y estacionamiento 
    Como <usuario> quiero conocer cuáles son las 
    rutas menos congestionadas y estacionamientos
    disponibles en el centro recreacional para 
    disminuir la pérdida de tiempo  

    Scenario:Usuario que compro ticket accede a "Ver ruta"
        Dado que el <usuario> se encuentra en mis tickets 
        Y selecciona <Ver ruta> en un <ticket> de la lista 
        Entonces la aplicación desplegará un <mapa> señalando las rutas y estacionamientos del mismo centro

        Examples:
        |usuario|ticket|mapa de rutas y estacionamientos|
        |Liliana|Parque de las Leyendas, 18-10-2022, 3 entradas|mapa de rutas y estacionamientos en tiempo real|

    Scenario: Usuario que compro ticket accede a "Ver ruta" pero no hay estacionamientos  
        Dado que el <usuario> se encuentra en mis tickets 
        Y selecciona <Ver ruta> en un <ticket> de la lista 
        Entonces la aplicación desplegará un <mapa> señalando las rutas e <indicando> que el centro no cuenta con estacionamientos

        Examples:
        |usuario|ticket|mapa de rutas y estacionamientos|indicación(mensaje)|
        |Liliana| Parque Huachipa, 05-04-2022,3 entradas|mapa de rutas en tiempo real|"Centro no cuenta con estacionamientos"|


        