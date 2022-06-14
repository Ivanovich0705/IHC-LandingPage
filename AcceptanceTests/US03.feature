
US03


Feature: Establecimiento de métodos de pago por defecto 
    Como <usuario> quiero establecer mis métodos 
    de pago para ahorrar tiempo al comprar entradas  

    Scenario: Usuario añade métodos de pago de forma correcta 
        Dado que el <usuario> abre la aplicación  
        Y presiona <Métodos de Pago> 
        Entonces el sistema lo dirige a Métodos de Pago
        Cuando el usuario selecciona el <símbolo añadir> 
        Y rellene la <información> que se solicita 
        Entonces la aplicación guardará el método de pago 

        Examples:
        |usuario|información|
        |Liliana|Nro tarjeta: 222000120283, MM/AAA: 10/2026,567, CVV:560|


    
    Scenario: Usuario erra al intentar añadir método de pago 
        Dado que el <usuario> abre la aplicación  
        Y presiona <Métodos de Pago>
        Entonces el sistema lo dirige a Métodos de Pago
        Cuando el usuario selecciona el <símbolo añadir> 
        Y rellene la <información> que se solicita de forma incorrecta 
        Entonces le envía un <mensaje> con su error

        Examples:
        |usuario|información|mensaje| 
        |Liliana|Nro tarjeta:22200012028M,MMAA: 10/2026,CVV:560|"Nro de tarjeta incorrecto"

        

        