import destinos.*

object paquete{
    
    var precio = 50

    method puedeEntregar(){
        return precio == 0
    }
    method pagar(){
        precio = 0
    }
    
}

object paquetito{

    method estaPago(){
        return true
    }

    method puedeEntregar(){
        return true
    }
    
}

object paquetonViajero {
    var destino = matrix
    var precio = 100 
    

    method cambiarDestino(dest){
        destino = dest
    }

    method pagar(){
        precio = 0
    }

    method estaPago(){
        return precio == 0
    }

    method puedeEntregar(mensajero){
        return self.estaPago() and mensajero.puedeLlamar() and mensajero.peso() < 1000
    }



}