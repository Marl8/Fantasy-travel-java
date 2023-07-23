
/* Alerta eliminar */

$(document).ready(function (event){
   $("#btn-delete").click(function(event){
       
       event.preventDefault();
       
        Swal.fire({
        title: 'Estas seguro?',
        text: "Esta acción no se podrá revertir!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#28ad31',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar!'
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire(
            'Elimidado!',
            'Su perfil ha sido eliminado.',
            'success',
            eliminarUsuario()
          );
            setTimeout(() => {
                window.location = "/fantasy";
                }, "1500");
        }
      });
    });     
});    

function eliminarUsuario(){

    var url = "/fantasy/deleteUser";
    $.ajax({
        type: 'POST',
        url: url,
        async: true,
        success: function(r){}
    });
}   