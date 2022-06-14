
US08

Feature: Registro de comentarios y calificaciones
    Como <usuario> quiero realizar comentarios y calificaciones
    para plasmar mi experiencia en el centro recreacional 

    Scenario: Usuario comenta y califica con alta puntuación a centro recreacional  
        Dado que el <usuario> ingresa a la sección Reseñas  
        Y selecciona <Añadir Reseña>  
        Y selecciona una <Visita>  
        Cuando escriba un <comentario> y coloca una <calificación> favorable  
        Y presione el botón <Aceptar> 
        Entonces el sistema mostrará un mensaje de confirmación y guardará dicho comentario y calificación 

        Examples:
        |usuario|Visita|comentario|calificación|
        |Liliana|Parque de las Leyendas, fecha:15/12/2021, cant.entradas:3|"Me encantó, pasé un lindo día"|5 estrellas|
    

    Scenario: Usuario comenta y califica con una baja puntuación a centro recreacional 
        Dado que el <usuario> ingresa a la sección Reseñas  
        Y selecciona <Añadir Reseña>  
        Y selecciona una <Visita>  
        Cuando escriba un <comentario> y coloca una <calificación> desfavorable  
        Y presione el botón <Aceptar> 
        Entonces el sistema mostrará un mensaje de confirmación y guardará dicho comentario y calificación

        Examples:
        |usuario|Visita|comentario|calificación|
        |Liliana|Castillo de Chancay, fecha: 25/12/2022, cantidad: 3 entradas|"No la pase bien, necesita mejor atención"|1 estrella|

    