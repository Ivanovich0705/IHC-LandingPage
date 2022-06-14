
US010

Feature: Mapa GPS
    Como <usuario> quiero visualizar el mapa
    del centro recreacional para facilitar mi recorrido 

    Scenario:Usuario que compró entradas en la aplicación accede a "Mapa GPS"
        Dado que el <usuario> se encuentra en el centro recreacional 
        Y presiona <Mapa GPS> 
        Y activa su <ubicación> 
        Entonces la aplicación despliega el <mapa> del centro recreacional 

        Examples:
        |usuario|ubicación|mapa interactivo|
        |Liliana|coordenadas de geolocalización|mapa del centro en tiempo real|

    
    Scenario: Usuario que no compró entradas en la aplicación ni en el centro accede a "Mapa GPS"
        Dado que el <usuario> se encuentra en el centro recreacional 
        Y presiona <Mapa GPS> 
        Y activa su <ubicación>  
        Entonces la aplicación le envía el <mensaje> "Error", con dos <opciones> "Escanear ticket", "No tengo Ticket"
        Cuando el usuario presione <No tengo ticket> 
        Entonces el sistema despliega un formulario de compra  
        Cuando el usuario <rellene el formulario> de compra de forma correcta 
        Entonces la aplicación despliega el <mapa> del centro recreacional 

        Examples:
        |opciones|
        |Escanear Ticket|
        |No tengo ticket|

        |usuario|ubicación|mensaje|opción|Fomulario de compra|mapa interactivo|
        |Liliana|coordenadas de geolocalización|"Error (No tiene entradas)"|No tengo ticket|formulario completo|mapa del centro en tiempo real|


    Scenario:Usuario que no compró entradas en la aplicación, pero si en el centro accede a "Mapa GPS" 
        Dado que el <usuario> se encuentra en el centro recreacional 
        Y presiona <Mapa GPS>
        Y activa su <ubicación>   
        Entonces la aplicación le envía el <mensaje> "Error", con dos opciones "Escanear ticket", "No tengo Ticket" 
        Cuando el usuario presione <Escanear ticket> 
        Entonces el sistema despliega Escanear Código QR
        Cuando el usuario realice el <escaneo> del ticket  
        Entonces la aplicación despliega el <mapa> del centro recreacional 

        Examples:
        |usuario|ubicación|mensaje|opción|escaneo|mapa interactivo|
        |Liliana|coordenadas de geolocalización|"Error (No tiene entradas)"|Escanear ticket|ticket escaneado|mapa del centro en tiempo real|
        

        



