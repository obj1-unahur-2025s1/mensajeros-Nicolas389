import vehiculos.*


object roberto{
    var peso = 90
    
    method puedeLlamar() {
        return false      
    }

    method entregarEnCamion(acoplados){
        peso = peso + camion.peso(acoplados)
    }

    method entregarEnBici() {
        peso = peso + bicicleta.peso()      
    }

    method peso(){
        return peso
    }

    method tieneUnMango(){
        return false
    }

    method tieneCubiertas() {
        return true      
    }

    method puedeEntregar(paquete){
        return paquete.puedeEntregar()
    }

 
}

object chuckNorris {

    var tienePulgarEnOido = false
    var tieneMeñiqueEnBoca = false

    method peso(){
        return 80
    }  

    method ponerPulgarEnOido(){
        tienePulgarEnOido = true
    }

    method ponerMeñiqueEnBoca(){
        tieneMeñiqueEnBoca = true
    }

    method puedeLlamar() {
      return tieneMeñiqueEnBoca && tienePulgarEnOido
    }

    method puedeEntregar(paquete){
        return paquete.puedeEntregar()
    }
}

object neo{
    var tieneCredito = false

    method peso(){
        return 0
    }

    method tieneCredito(){
        return tieneCredito
    }

    method cargarCredito() {
        tieneCredito = true      
    }

    method puedeLlamar() {
        return tieneCredito      
    }

    method puedeEntregar(paquete){
        return paquete.puedeEntregar() 
    }


}