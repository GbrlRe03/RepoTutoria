import candidatos.*
import roles.*


object liga{
  const candidatos = [zoe,helia,astro]
  const guardianes = []
  var rolActual = inicial

  method guardianes(){
    return guardianes
  }
  
  method agregarCandidato(unCandidato){
    candidatos.add(unCandidato)
  }

  method eliminarCandidato(unCandidato){
    candidatos.remove(unCandidato)
  }

  method modificarRol(nuevoRol){
    rolActual = nuevoRol
  }

  method rolActual() = rolActual

  method fuerzaTotal(){
    return guardianes.sum({g => g.fuerza()})
  }

  method entrenarCandidatos(){
    candidatos.forEach({c=>c.entrenar()})
  }

  method puedeSoportarAtaque(unValor) = self.fuerzaTotal() >unValor*2

  method superarEvaluacionPara(unRol){
    guardianes.addAll(self.aplicanA(unRol))
    candidatos.removeAll(self.aplicanA(unRol))
  }

  method aplicanA(unRol){
    return candidatos.filter({c=>unRol.puedeOcuparRol(c)})
  }
  
}
