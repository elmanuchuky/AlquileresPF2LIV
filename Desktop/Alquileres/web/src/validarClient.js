/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validar() {
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
else if(Phone.length<6 && Phone.length>14)
{
    alert("Telefono debe tener entre 6 y 14 caracteres numéricos");
    return false;
}
if(isNaN(Document)){
    alert("Ingrese solo números en el campo Documento");
    return false;
}
else if(Document.length !==8)
{
    alert("Documento debe tener 8 caracteres numéricos");
    return false;
}
}