
var imagenes = new Array("images/SNMV1.jpg", "images/SNMV2.jpg", "images/SNMV3.jpg", "images/SNMV4.jpg");
var c=0;

function carrusel(){
    c++;
    if(c>=4){c=0; }
    document.getElementById("imgcar-img").setAttribute("src", imagenes[c] );
}   
setInterval(carrusel, 2000);