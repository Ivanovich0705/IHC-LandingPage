
US02

Feature: Recuperación de cuenta  
    Como <usuario> quiero recuperar mi 
    cuenta para acceder a la aplicación

    Scenario:Usuario recibe código de recuperación 
        Dado que el <usuario> abre la aplicación  
        Y presiona <¿Problemas para iniciar sesión?>
        Entonces el sistema lo redirige al formulario Recuperar Cuenta
        Cuando ingresa el <correo> de su cuenta  
        Y presiona <Enviar Código> 
        Entonces la aplicación le envía un <codigo>  
        Cuando el usuario ingrese el <codigo>  
        Y presiona <continuar>  
        Entonces tendrá acceso a la aplicación 

        Examples:
        |usuario|correo|código|
        |Liliana|nutriaCastor@gmail.com|rXE345z|

    
    Scenario: Usuario no recibe código de recuperación 
        Dado que el <usuario> abre la aplicación  
        Y presiona <¿Problemas para iniciar sesión?> 
        Entonces el sistema lo dirige al formulario Recuperar Cuenta
        Cuando ingresa el <correo> de su cuenta  
        Y presiona <Enviar Código>
        Y la aplicación no le envía un <código>  
        Cuando el usuario presione <Reenviar código>
        Entonces la aplicación le envía un <nuevo código> 

        Examples:
        |usuario|correo|código|nuevo codigo|
        |Liliana|nutriaCastor@gmail.com|no enviado|ueiensA|

        
    Scenario: Usuario ingresa correo erróneo
        Dado que el <usuario> abre la aplicación 
        Y presiona <¿Problemas para iniciar sesión?>
        Entonces el sistema lo dirige al formulario Recuperar Cuenta
        Cuando ingresa el <correo> de su cuenta de forma errónea 
        Y presiona <Enviar Código>
        Entonces la aplicación le pregunta <¿No tienes ese correo?> y le ofrece la opción de enviar el código a su <número celular> 
        Cuando el usuario ingresa el <código recibido>
        Y presiona <Aceptar>
        Entonces tendrá acceso a la aplicación

        Examples:
        |usuario|correo|número celular| código recibido|
        |Liliana|nutriaMastor@gmail.com|993456789|udjkA11|
    
 

 
