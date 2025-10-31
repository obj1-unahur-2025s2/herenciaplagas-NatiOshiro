//* ELEMENTOS
class Elemento {
  var esBueno
  var barrios = []

  method esBueno() = esBueno
  method esCopado() { //? 
    var cantCopado = barrios.count({ b => b.esBueno()})
    var cantNoCopado = barrios.count({ b => not b.esBueno()})
    return cantCopado > cantNoCopado
  } 

}

class Hogar{
  var nivelDeMugre
  var confortQueOfrece
  method esBueno() = nivelDeMugre == confortQueOfrece / 2
}
class Huerta{
  var capacidadDeProduccion    // kilo por mes
  var unNivel 

  method capacidadDeProduccion() = capacidadDeProduccion
  method unNivel() = unNivel
  method esBueno() = capacidadDeProduccion > unNivel 
}
class Mascota {
  var nivelDeSalud
  
//  method esSaludable() = nivelDeSalud 
  method esBueno() = nivelDeSalud > 250 

}
//* PLAGAS

class Plaga {
  var nivelDeDanio
  var poblacion
  
  method poblacion() = poblacion
  method ataque(unElemento) {}
  
}
class Cucarachas inherits Plaga {
  var poblacion // cant

}