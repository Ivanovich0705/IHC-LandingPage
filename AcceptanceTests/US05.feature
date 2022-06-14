
US05

Feature: Compra de entradas 
    Como <usuario> quiero comprar entradas de un
    centro recreacional dentro de la aplicación 
    para ahorrar tiempo y dinero 

    Scenario: Usuario compra entradas con métodos de pago por defecto 
        Dado que el <usuario> se encuentra en Mis tickets
        Y presiona <Comprar tickets> 
        Entonces la aplicación despliega una <lista de lugares> 
        Cuando el usuario elija el <lugar> 
        Y seleccione cierta <cantidad de entradas por edad>  
        Y presione <Aceptar> 
        Entonces la aplicación muestra los <métodos de pago> por defecto y “Ninguno”
        Cuando el usuario elija el <método> e ingrese la <contraseña>  
        Entonces la aplicación guardará el ticket

        Examples:
        |lista de lugares|
        |Parque de Las Leyendas|
        |Parque Huachipa|

        |métodos de pago|
        |Visa|
        |BCP|
        |Ninguno|

        |usuario|lugar elegido|cant. entradas por edad|Método de pago elegido|
        |Liliana|Parque de las Leyendas|1 adulto, 2 niños|BCP|


    Scenario: Usuario compra entradas con métodos de pago nuevo 
        Dado que el <usuario> se encuentra en Mis tickets
        Y presiona <Comprar tickets> 
        Entonces la aplicación despliega una <lista de lugares> 
        Cuando el usuario elija el <lugar>  
        Y seleccione cierta <cantidad de entradas por edad>
        Y presione <Aceptar> 
        Entonces la aplicación muestra los <métodos de pago por defecto> 
        Cuando el usuario elija <Ninguno>
        Entonces la aplicación mostrará un formulario de compra
        Cuando el usuario rellene los <campos> 
        Y Presione <Pagar> 
        Entonces la aplicación guardará el ticket 

        Examples:
        |lista de lugares|
        |Parque de Las Leyendas|
        |Parque Huachipa|

        |métodos de pago|
        |Visa|
        |BCP|
        |Ninguno|

        |usuario|lugar elegido|cant. de entradas por edad|método elegido|Formulario de Compra|
        |Liliana|Parque de las Leyendas|1 adulto,2 niños| Ninguno | nro de tarjeta: 374948029384, fecha: 10/2026-567, Nombre: Liliana,Loaiza Suarez, correo: nutriaCastor@gmail.com|

