import mensajeros.*
import paquete.*

object empresa{
    var mensajeros = #{}

    method contratar(mensajero){
        mensajeros.add(mensajero)
    }

    method despedir(mensajero) {
        mensajeros.remove(mensajero)      
    }

    method despedirTodos(){
        mensajeros.clear()
    }

    method esGrande(){
        return mensajeros.size() > 2
    }

    method primerMensajeroPuedeEntregar(){
        return mensajeros.asList().first()
    }

    method pesoDelUltimoMensajero(){
        return mensajeros.asList().last().peso()
    }

    method entregarUnPaquete(paquete){
        return mensajeros.any({p => p.puedeEntregar(paquete)})
    }

    method mensajerosQuePuedenEntregar(paquete){
        return mensajeros.filter({p => p.puedeEntregar(paquete)})
    }

    method haySobrepesoEnEmpresa(){
        return mensajeros.sum({p => p.peso()}) > 500
    }

    // para test
    method mensajeros(){
        return mensajeros
    }


}