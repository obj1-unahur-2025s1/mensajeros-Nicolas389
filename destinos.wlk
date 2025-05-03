import mensajeros.*
import paquete.paquete

object brooklyn{
  method dejarPasar(mensajero){
    return mensajero.peso() < 1000 && mensajero.puedeEntregar()
  }
}

object matrix {

  method dejarPasar(mensajero){
    return mensajero.puedeLlamar() && mensajero.puedeEntregar()
  }
}

