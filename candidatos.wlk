import liga.*
import roles.*


object helia {
 method fuerza() = 22

 method entrenar(){

 }
// nunca va a tener estudios avanzados segun consigna
 method esAvanzado(){
  return false
 }
}


object astro {
  var cantArmas = 0
  method entrenar(){
    cantArmas += 1
  }
  method fuerza() = cantArmas*10

  method esAvanzado(){
   return cantArmas > 5
  }
}


object zoe {
  const rolesAprendidos = []
  method rolesAprendidos() = rolesAprendidos
  method entrenar(){
    if (!rolesAprendidos.contains(liga.rolActual())){
        rolesAprendidos.add(liga.rolActual())
    }
  }

  method esAvanzado() = rolesAprendidos.contains(estratega)

  method fuerza() = 8 + rolesAprendidos.size()
}