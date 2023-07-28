    
    
function pagoFinal () {
    
    let valor = parseInt(document.getElementById('select-paquete').value);
    const cantidadPersonas = parseInt(document.getElementById('cantidad').value);
    let formaPago = document.getElementById('select-pago').value;

    
    let precioFinal = 0;
    
   if (cantidadPersonas < 1 || valor === 0 || formaPago === "") {
       
        event.preventDefault();
        
        document.getElementById('precio').value = 'Error valor invalido';
    }else{
    
    switch(valor){
        
        case 17: 
            precioFinal = 250.0 * cantidadPersonas;
            break;
        case 18: 
            precioFinal = 380.0 * cantidadPersonas;
            break;
        case 19: 
            precioFinal = 150.0 * cantidadPersonas;
            break;
        case 20: 
            precioFinal = 180.0 * cantidadPersonas;
            break;    
        case 21: 
            precioFinal = 200.0 * cantidadPersonas;
            break;    
        case 22: 
            precioFinal = 450.0 * cantidadPersonas;
            break;    
        case 23: 
            precioFinal = 1250.0 * cantidadPersonas;
            break;   
        case 24: 
            precioFinal = 1950.0 * cantidadPersonas;
            break;
        case 25: 
            precioFinal = 1825.0 * cantidadPersonas;
            break;    
    }
    
    document.getElementById('precio').value = 'Total a pagar: US$ ' + precioFinal;
    }
}
