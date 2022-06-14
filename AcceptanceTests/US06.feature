
US06
    
Feature:Visualización de tickets e información detallada
    Como <usuario> quiero los detalles de mis 
    tickets comprados para verificar que la
    compra esta correcta  

    Scenario: Usuario que alguna vez a comprado tickets accede a “Mis tickets” 
        Dado que el <usuario> se encuentra en Mis tickets
        Entonces el sistema despliega una <lista de los tickets comprados>  

        Examples:
        |usuario|lista de tickets comprados|
        
        |Liliana|Parque de las Leyendas, fecha: 18-10-2022, cantidad:3 entradas ; Castillo de Chancay, fecha: 25/12/2022, cantidad: 3 entradas|


    Scenario: Usuario que nunca ha comprado tickets accede a “Mis tickets” 
        Dado que el <usuario> se encuentra en “Mis tickets” 
        Entonces el sistema no muestra nada  

        Examples:
        |usuario|
        |Liliana|


    Scenario:  Usuario desea visualizar detalle de ticket  
        Dado que el <usuario> se encuentra en "Mis tickets"
        Entonces el sistema despliega una <lista de los tickets comprados>  
        Cuando el usuario selecciona <Ver detalles> en un <ticket> de la lista 
        Entonces el sistema mostrará los <detalles del ticket> 

        Examples:

        |lista de tickets comprados|
        |Parque de las Leyendas, fecha: 18-10-2022, cantidad:3 entradas|
        |Castillo de Chancay, fecha: 25/12/2022, cantidad: 3 entradas|


        |usuario| ticket seleccionado | detalles del ticket|
        |Liliana| Parque de las Leyendas, 18-10-2022, 3 entradas|
        |nro orden: 47594494, Cliente: Liliana Loaiza Suarez, fecha y hora: 15/12/2022 13:00, tarjeta: 374948029384,
        moneda: soles, correo: nutriaCastor@gmail.com, fecha de visita: 18-10-2022, subtotal:45, método de pago:visa,
        total:45|



