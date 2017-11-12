/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validarNuevoCliente() {
var Name, Surename, Mail, Phone, Document;
expresionMail=/\W+@\W+\.+[a-z]/;

Name = document.getElementById("txtName").value;
Surename = document.getElementById("txtSurename").value;
Mail = document.getElementById("txtMail").value;
Phone = document.getElementById("txtPhone").value;
Document = document.getElementById("txtDocument").value;

if(!isNaN(Name)){
    alert("Ingrese solo letras en el campo Nombre");
    return false;
}
if(!isNaN(Surename)){
    alert("Ingrese solo letras en el campo Apellido");
    return false;
}
if(!expresionMail.test(Mail)){
    alert("Formato de Mail no valido");
    return false;
} 
if(isNaN(Phone)){
    alert("Ingrese solo números en el campo Telefono");
    return false;
}
else if(Phone <0)
{
    alert("El Telefono no puede ser negativo");
    return false;
}
else if(Phone.length<6 && Phone.length>14)
{
    alert("El Telefono debe tener entre 6 y 14 caracteres numéricos");
    return false;
}
if(isNaN(Document)){
    alert("Ingrese solo números en el campo Documento");
    return false;
}
else if(Document <0)
{
    alert("El Documento no puede ser negativo");
    return false;
}
else if(Document.length !==8)
{
    alert("El Documento debe tener 8 caracteres numéricos");
    return false;
}
}
function validarNuevoAlquiler(){
    var ComputersAmount, ExtraChairsAmount;
    
    ComputersAmount = document.getElementById("txtComputersAmount").value;
    ExtraChairsAmount = document.getElementById("txtExtraChairsAmount").value;
   
if(isNaN(ComputersAmount)){
    alert("Ingrese solo números en la Cantidad de Computadoras");
    return false;
}
else if(ComputersAmount <0)
{
    alert("La Cantidad de Computadoras no puede ser negativa");
    return false;
}
else if(ComputersAmount > 50 )
{
    alert("La Cantidad de Computadoras no puede ser mayor a 50");
    return false;
}
if(isNaN(ExtraChairsAmount)){
    alert("Ingrese solo números en la Cantidad de Sillas");
    return false;
}
else if(ExtraChairsAmount <0)
{
    alert("La Cantidad de Sillas no puede ser negativa");
    return false;
}
else if(ExtraChairsAmount > 50 )
{
    alert("La Cantidad de Sillas no puede ser mayor a 50");
    return false;
}
    
    }
function validarNuevoPuesto(){
var Floor, ChairsAmount; 

Floor= document.getElementById("txtFloor").value;
ChairsAmount= document.getElementById("txtChairsAmount").value;

if(isNaN(Floor)){
    alert("Ingrese solo números en campo Piso");
    return false;
}
else if(Floor <0)
{
    alert("El Piso no puede ser negativo");
    return false;
}
else if(Floor > 5 )
{
    alert("El Piso no puede ser mayor a 5");
    return false;
}
if(isNaN(ChairsAmount)){
    alert("Ingrese solo números en la Cantidad de Sillas");
    return false;
}
else if(ChairsAmount <0)
{
    alert("La Cantidad de Sillas no puede ser negativa");
    return false;
}
else if(ChairsAmount > 50 )
{
    alert("La Cantidad de Sillas no puede ser mayor a 50");
    return false;
}
}