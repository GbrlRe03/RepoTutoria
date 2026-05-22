import liga.*
import roles.*


object helia {
 method fuerza() = 22

 method entrenar(){

 }
}


object astro {
  var cantArmas = 0
  method entrenar(){
    cantArmas += 1
  }
  method fuerza() = cantArmas*10

  method esAvanzado(){
    cantArmas > 5
  }
}


object zoe {
  const rolesAprendidos = []

  method entrenar(){
    if (!rolesAprendidos.contains(liga.rolActual())){
        rolesAprendidos.add(liga.rolActual())
    }
  }

  method esAvanzado() = rolesAprendidos.contains(estratega)

  method fuerza() = 8 + rolesAprendidos.size()
}