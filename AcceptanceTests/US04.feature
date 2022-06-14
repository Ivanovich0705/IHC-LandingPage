
US04

Feature: Chat Bot  
    Como <usuario> quiero resolver mis dudas de
    forma rápida para evitar la pérdida de tiempo 

    Scenario: Usuario realiza una pregunta que el Chat Bot puede responder  
        Dado que el <usuario> se encuentra en el Chat Bot  
        Y realiza una <pregunta>  
        Entonces el Chat Bot le envía la <solución> detallada 
        Y almacena la información para aprender más  

        Examples:
        |usuario|pregunta|solución|
        |Liliana|He perdido mi cámara fotográfica ¿Qué puedo hacer?|Dirigete a la zona de objetos pérdidos|


    Scenario: Usuario realiza una pregunta que el Chat Bot no puede responder 
        Dado que el <usuario> se encuentra en el Chat Bot 
        Y realiza una <pregunta> 
        Entonces el Chat Bot le envía el <mensaje> “No cuento con esa información” 
        Y le asigna un asesor para resolver sus dudas para resolver otras

        Examples:
        |usuario|pregunta|mensaje|
        |Liliana|¿Cuantos animales hay?|"No cuento con esa información"|



