import liga.*
import candidatos.*
object ayudante {
  var fuerzaMinima = 0
  var fuerzaMaxima = 100

  method cambiarFuerzaMin(unValor){
    fuerzaMinima = unValor
  }

  method cambiarFuerzaMax(unValor){
    fuerzaMaxima = unValor
  }
  method puedeOcuparRol(unCandidato){
    return unCandidato.fuerza().between(fuerzaMinima, fuerzaMaxima)
  }
}


object estratega {
  
  method puedeOcuparRol(unCandidato){
    return unCandidato.esAvanzado()
  }


}


object inicial {
  
  method puedeOcuparRol(unCandidato) = true
}
