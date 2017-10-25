# AlquileresPF2LIV
Trabajo final integrador como parcial 2 en la materia Laboratorio IV


Consigna
En nuestra ciudad se acaba de instalar una empresa que ofrece alquiler temporal de oficinas. Este tipo
de emprendimientos son muy �tiles para que profesionales individuales, peque�os grupos de emprendedores o
empresas medianas pero que reci�n se inician puedan disponer de una oficina, pero sin afrontar los gastos y
el esfuerzo necesario para montar una. Por ejemplo, para un profesional independiente puede ser demasiado
complejo instalar una oficina desde cero. La empresa de nuestro caso de estudio ofrece oficinas completamente
amobladas, conexi�n a internet, cocina y ba�o, que cualquier interesado puede alquilar por un periodo de tiempo
determinado.
La empresa dispone de un conjunto de puestos de trabajo disponibles para alquilar, cada uno de ellos identificado
por un n�mero correlativo. Por cada puesto se conoce el piso donde se encuentra en el edificio, el cual se
identifica con un n�mero entre 1 y 5; la cantidad de sillas que dispone y una bandera que indica si se encuentra
frente a una ventana.
Cuando un cliente contrata por primera vez deben registrarse sus datos, entre ellos su nombre, documento y
tel�fono.
Los clientes pueden contratar m�s de un puesto, en tal caso de cada puesto que necesita debe indicar el
n�mero del mismo, la cantidad de computadoras que necesita (este valor puede ser cero si el cliente utilizar� su
propia computadora port�til), la cantidad de sillas adicionales en caso de requerirlas y si solicita el acceso a las
salas de reuniones.
La empresa nos solicita un sistema con interfaz web que le permita:
� Inicio de sesi�n: Para ingresar al sitio los usuarios deben autenticarse mediante un formulario. No es
requisito mantener los datos de usuario y contrase�a en la base de datos. La autenticaci�n es indispensable
para acceder al resto de la funcionalidad.
� Alta de puesto: Se debe presentar un formulario que permita registrar un nuevo puesto. De cada uno de
ellos se deben solicitar todos sus datos.
� Alta de cliente: Se debe presentar un formulario que permita registrar un nuevo cliente. En esta pantalla
no se le solicitan los datos de los puestos alquilados.
� Alta de alquiler: Un formulario debe permitir dar de alta un nuevo alquiler de alg�n puesto por parte de un
cliente. El formulario debe ofrecer alg�n mecanismo adecuado para la selecci�n del puesto y del cliente. Al
finalizar el proceso de alta se debe mostrar el importe mensual del alquiler.
� Modificaci�n de alquiler: Para un contrato de alquiler ya establecido, la pantalla de modificaci�n debe
permitir modificar la condiciones, agregando o eliminando computadoras, sillas o acceso a salas de reuniones.
� Reportes: En una o m�s p�ginas debe mostrarse:
� Listado completo de puestos: El listado debe mostrar todos los puestos, indicando con claridad cu�les
est�n ocupados y cu�les libres.
1
Laboratorio de Computaci�n IV Clase Examen
� Listado de clientes: Este listado debe mostrar todos los clientes indicando por cada uno de ellos la
cantidad total de puestos que alquilan y el importe total de sus alquileres.
� Total de alquileres por piso: Por cada piso del edificio debe indicarse el total recaudado.
� Detalle de cliente: Para un cliente en particular que el usuario seleccione mostrar todos sus datos, los
datos de todos sus puestos alquilados y el total que paga mensualmente.
� Listado de puestos disponibles. Debe presentarse un listado simple de todos los puestos que no est�n
alquilados, incluyendo su precio base. Esta es la �nica p�gina que debe ser accesible sin autenticaci�n.
El precio de los alquileres se calcula de la siguiente forma:
� Precio base: Los puestos de los pisos 1, 2 y 3 cuestan $2000 por mes mientras que en los pisos 4 y 5 los
puestos son m�s grandes y cuestan $3000. Todo puesto ubicado en una ventana cuesta $500 m�s.
� Adicionales opcionales: Cada computadora que soliciten los clientes suma $800 y el acceso con tiempo libre
a las salas de reuniones incrementa el alquiler en $1000. Si requiere sillas extra se deben sumar $100 por
cada una.
Entrega
La estructura de paquetes sugerida para la realizaci�n del proyecto es la siguiente:
� Modelo contendr� las clases de entidad apropiadas.
� Controlador contendr� la clase de conexi�n, en la que se implementar�n las operaciones relacionadas con
el acceso a la base de datos.
� Servlets contendr� todos los servlets utilizados para recibir peticiones del cliente.
� Web-Pages contendr� todas las p�ginas utilizadas, tanto jsp como html.
El dise�o de la base de datos queda a criterio del grupo, sin embargo no puede poseer menos de dos tablas y
debe estar correctamente normalizada.
La interfaz debe incluir validaciones del lado del cliente (mediante javascript) en todos los formularios.
Asimismo deben especificarse las fuentes, colores y distribuci�n de los elementos mediante hojas de estilo.
El pr�ctico deber� utilizar todos los contenidos vistos en la segunda parte de la materia, a saber, creaci�n de
aplicaci�n web con p�ginas html y jsp, con uso de servlets, componentes jsp (directivas, declaraciones, scriplets,
expresiones), lenguaje de expresi�n y Java Beans, todo esto con conexi�n a una base de datos.
Condiciones
� El trabajo debe ser realizado en forma individual o en grupos de dos o tres integrantes.
� La entrega debe realizarse en horario de clase y en el aula habitual.
� Para la presentaci�n y defensa del trabajo queda a criterio del grupo la utilizaci�n de una computadora del
aula o la provisi�n de una computadora port�til.
� La creaci�n de la base de datos es responsabilidad de cada grupo. En caso de utilizar SQL Server pueden
utilizar el servidor de uso compartido disponible en el aula. Si el grupo decide utilizar otro DBMS (MySql,
Oracle, etc.) deber� presentar la entrega indefectiblemente en una computadora propia que tenga instalado
el software necesario.
� Todos los integrantes del grupo deben presentarse a la defensa. Si un alumno no asiste su calificaci�n ser�
Ausente y deber� recuperar el parcial.
� El examen se aprueba con el 60% de las consignas resueltas correctamente.