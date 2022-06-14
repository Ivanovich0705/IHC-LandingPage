
US09

Feature:Visualización y reacción de reseñas  
    Como <usuario> quiero visualizar y reaccionar a los
    comentarios para decidir qué centro recreacional visitar 

    Scenario: Usuario visualiza y reacciona a las reseñas  
        Dado que el <usuario> ingresa a la sección Reseñas  
        Entonces el sistema despliega una <lista de reseñas>  
        Cuando el usuario <reaccione> a una reseña 
        Entonces la aplicación guardará la interacción
        
        Examples:
        |lista de reseñas|
        |Roberto Luis Díaz - Parque de las Leyendas|
        |Marpia José Godoñez- Castillo de Chancay|


        |usuario|reacción reseña|
        |Liliana|(Roberto Luis Díaz): Me encanta|

