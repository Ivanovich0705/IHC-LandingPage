
US01


Feature: Creacion de cuenta
    Como nuevo <usuario> quiero crear mi 
    cuenta para acceder a la aplicación  

    Scenario: Usuario completó de manera correcta el formulario 
        Dado que el <usuario> abre la aplicación   
        Y  presiona en <Crear cuenta>
        Entonces el sistema lo dirige al formulario 
        Cuando rellena <Nombres>, <Apellidos>, <Fecha de nacimiento>,<Correo Electrónico>,<Contraseña>
        Y presiona <Crear Cuenta> 
        Entonces la aplicación crea la nueva cuenta 
    
        Examples:
        |usuario|Nombres|Apellidos|Fecha de nacimiento| Correo Electrónico| Contraseña|
        |Liliana|Liliana |Loaiza Suarez|04-01-1999|nutriaCastor@gmail.com|234luciAM!|


    Scenario:Usuario ingresa una cuenta ya existente 
        Dado que el <usuario> abre la aplicación  
        Y presiona en <Crear cuenta> 
        Entonces el sistema lo dirige al formulario 
        Cuando rellena <Nombres>, <Apellidos>, <Fecha de nacimiento>, <Correo Electrónico>, <Contraseña>
        Y presiona <Crear Cuenta>
        Entonces la aplicación le envía el <mensaje> "El usuario ya se encuentra registrado" 

        Examples:
        |usuario|Nombres|Apellidos|Fecha de nacimiento| Correo Electrónico| Contraseña|mensaje|
        |Liliana|Liliana|Loaiza Suarez|04-01-1999|nutriaCastor@gmail.com|234luciAM!| "El usuario ya se encuentra registrado"|


    




