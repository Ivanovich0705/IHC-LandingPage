
US013

Feature:Facilidad de compra y llegada a servicios del centro recreacional 
    Como <usuario> quiero visualizar las rutas de llegada
    y poder comprar en los servicios dentro del mapa 
    para facilitar mi acceso a estos puntos  

    Scenario:Usuario compra en un servicio  
        Dado que el <usuario> se encuentra en Mapa GPS 
        Y selecciona <Servicios> 
        Cuando el usuario seleccione un <servicio>  
        Entonces el sistema despliega dos opciones "Comprar" y "Ver Ruta" 
        Cuando el usuario seleccione <Comprar>
        Entonces el sistema despliega el formulario de compra  
        Dado que el usuario <rellena el formulario> de forma correcta  
        Y presiona <Pagar>  
        Entonces el sistema envía un <mensaje de confirmación> 

        Examples:
        |Servicios|
        |Restaurante La Marina|
        |Restaurante Puerto Azul|

        |usuario|servicio seleccionado|Fomulario de compra|Mensaje|
        |Liliana|Restaurante Puerto Azul|Fomulario completo|"Tu pago se realizó con éxito"|


    Scenario: Usuario visualiza ruta de servicio  
        Dado que el <usuario> se encuentra en Mapa GPS
        Y selecciona <Servicios>
        Entonces el sistema despliega dos opciones "Comprar" y "Ver Ruta" 
        Cuando el usuario seleccione <Ver Ruta> 
        Entonces el sistema mostrará las <rutas> en el mapa 

        Examples:
        |Servicios|
        |Restaurante La Marina|
        |Restaurante Puerto Azul|

        |usuario|servicio seleccionado|rutas|
        |Liliana|Restaurante Puerto Azul|rutas señaladas en el mapa interactivo|


