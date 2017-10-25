# AlquileresPF2LIV
Trabajo final integrador como parcial 2 en la materia Laboratorio IV


Consigna
En nuestra ciudad se acaba de instalar una empresa que ofrece alquiler temporal de oficinas. Este tipo
de emprendimientos son muy útiles para que profesionales individuales, pequeños grupos de emprendedores o
empresas medianas pero que recién se inician puedan disponer de una oficina, pero sin afrontar los gastos y
el esfuerzo necesario para montar una. Por ejemplo, para un profesional independiente puede ser demasiado
complejo instalar una oficina desde cero. La empresa de nuestro caso de estudio ofrece oficinas completamente
amobladas, conexión a internet, cocina y baño, que cualquier interesado puede alquilar por un periodo de tiempo
determinado.
La empresa dispone de un conjunto de puestos de trabajo disponibles para alquilar, cada uno de ellos identificado
por un número correlativo. Por cada puesto se conoce el piso donde se encuentra en el edificio, el cual se
identifica con un número entre 1 y 5; la cantidad de sillas que dispone y una bandera que indica si se encuentra
frente a una ventana.
Cuando un cliente contrata por primera vez deben registrarse sus datos, entre ellos su nombre, documento y
teléfono.
Los clientes pueden contratar más de un puesto, en tal caso de cada puesto que necesita debe indicar el
número del mismo, la cantidad de computadoras que necesita (este valor puede ser cero si el cliente utilizará su
propia computadora portátil), la cantidad de sillas adicionales en caso de requerirlas y si solicita el acceso a las
salas de reuniones.
La empresa nos solicita un sistema con interfaz web que le permita:
• Inicio de sesión: Para ingresar al sitio los usuarios deben autenticarse mediante un formulario. No es
requisito mantener los datos de usuario y contraseña en la base de datos. La autenticación es indispensable
para acceder al resto de la funcionalidad.
• Alta de puesto: Se debe presentar un formulario que permita registrar un nuevo puesto. De cada uno de
ellos se deben solicitar todos sus datos.
• Alta de cliente: Se debe presentar un formulario que permita registrar un nuevo cliente. En esta pantalla
no se le solicitan los datos de los puestos alquilados.
• Alta de alquiler: Un formulario debe permitir dar de alta un nuevo alquiler de algún puesto por parte de un
cliente. El formulario debe ofrecer algún mecanismo adecuado para la selección del puesto y del cliente. Al
finalizar el proceso de alta se debe mostrar el importe mensual del alquiler.
• Modificación de alquiler: Para un contrato de alquiler ya establecido, la pantalla de modificación debe
permitir modificar la condiciones, agregando o eliminando computadoras, sillas o acceso a salas de reuniones.
• Reportes: En una o más páginas debe mostrarse:
– Listado completo de puestos: El listado debe mostrar todos los puestos, indicando con claridad cuáles
están ocupados y cuáles libres.
1
Laboratorio de Computación IV Clase Examen
– Listado de clientes: Este listado debe mostrar todos los clientes indicando por cada uno de ellos la
cantidad total de puestos que alquilan y el importe total de sus alquileres.
– Total de alquileres por piso: Por cada piso del edificio debe indicarse el total recaudado.
– Detalle de cliente: Para un cliente en particular que el usuario seleccione mostrar todos sus datos, los
datos de todos sus puestos alquilados y el total que paga mensualmente.
• Listado de puestos disponibles. Debe presentarse un listado simple de todos los puestos que no estén
alquilados, incluyendo su precio base. Esta es la única página que debe ser accesible sin autenticación.
El precio de los alquileres se calcula de la siguiente forma:
• Precio base: Los puestos de los pisos 1, 2 y 3 cuestan $2000 por mes mientras que en los pisos 4 y 5 los
puestos son más grandes y cuestan $3000. Todo puesto ubicado en una ventana cuesta $500 más.
• Adicionales opcionales: Cada computadora que soliciten los clientes suma $800 y el acceso con tiempo libre
a las salas de reuniones incrementa el alquiler en $1000. Si requiere sillas extra se deben sumar $100 por
cada una.
Entrega
La estructura de paquetes sugerida para la realización del proyecto es la siguiente:
• Modelo contendrá las clases de entidad apropiadas.
• Controlador contendrá la clase de conexión, en la que se implementarán las operaciones relacionadas con
el acceso a la base de datos.
• Servlets contendrá todos los servlets utilizados para recibir peticiones del cliente.
• Web-Pages contendrá todas las páginas utilizadas, tanto jsp como html.
El diseño de la base de datos queda a criterio del grupo, sin embargo no puede poseer menos de dos tablas y
debe estar correctamente normalizada.
La interfaz debe incluir validaciones del lado del cliente (mediante javascript) en todos los formularios.
Asimismo deben especificarse las fuentes, colores y distribución de los elementos mediante hojas de estilo.
El práctico deberá utilizar todos los contenidos vistos en la segunda parte de la materia, a saber, creación de
aplicación web con páginas html y jsp, con uso de servlets, componentes jsp (directivas, declaraciones, scriplets,
expresiones), lenguaje de expresión y Java Beans, todo esto con conexión a una base de datos.
Condiciones
• El trabajo debe ser realizado en forma individual o en grupos de dos o tres integrantes.
• La entrega debe realizarse en horario de clase y en el aula habitual.
• Para la presentación y defensa del trabajo queda a criterio del grupo la utilización de una computadora del
aula o la provisión de una computadora portátil.
• La creación de la base de datos es responsabilidad de cada grupo. En caso de utilizar SQL Server pueden
utilizar el servidor de uso compartido disponible en el aula. Si el grupo decide utilizar otro DBMS (MySql,
Oracle, etc.) deberá presentar la entrega indefectiblemente en una computadora propia que tenga instalado
el software necesario.
• Todos los integrantes del grupo deben presentarse a la defensa. Si un alumno no asiste su calificación será
Ausente y deberá recuperar el parcial.
• El examen se aprueba con el 60% de las consignas resueltas correctamente.