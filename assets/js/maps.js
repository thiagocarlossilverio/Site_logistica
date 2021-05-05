
$(document).ready(function(e) { 
    localizarUsuario();  
});
function localizarUsuario(){
  if (window.navigator && window.navigator.geolocation) {
   var geolocation = window.navigator.geolocation;
   geolocation.getCurrentPosition(sucesso, erro);
  } else {
     alert('Geolocalização não suportada em seu navegador.');
     cadastra('0', '0');
  }
  function sucesso(posicao){
    var latitude = posicao.coords.latitude;
    var longitude = posicao.coords.longitude;
    cadastra(latitude, longitude);
  }
  function erro(error){
    cadastra('0', '0');
  }
}

function cadastra(latitude, longitude) {
    $.ajax({
        url: '/index/map',
        type: 'POST',
        dataType: 'JSON',
        data: {
           latitude: latitude,
           longitude: longitude
        },
        success: function(data) {
         //   alert('salvo');
           // setTimeout("$('#alerta').fadeOut('slow')", 1000);
        }
    });
}