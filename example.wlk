//* ELEMENTOS
class Elemento {
  var esBueno

}

class Hogar{
//* const para despues de crear el objeto esos valores no van a cambiar.
  const nivelDeMugre
  const confortQueOfrece

  method esBueno() = nivelDeMugre <= confortQueOfrece / 2
}
//! OJO ! RECHAQUEAR COMO LO HAGO
class Huerta{
  var capacidadDeProduccion    // kilo por mes
//  var unNivelRequerido lo agrego en un objeto ya que el nivel de la huerta se tiene que modificar fuera de la CLASS

  method capacidadDeProduccion() = capacidadDeProduccion
//  method unNivel() = unNivelRequerido
  method esBueno() = capacidadDeProduccion > nivelDeHuerta.nivel()

// var Huerta1 )= new Huerta(capacidadDeProduccion = 5) 
}
// Se hizo un obj aparte ya que tiene que cambiar el nivel ya que TODAS COMPARTEN ELM MISM VALOR (nivel)
object nivelDeHuerta {
  var property nivel = 0 
}
class Mascota {
  const nivelDeSalud
  
//  method esSaludable() = nivelDeSalud 
  method esBueno() = nivelDeSalud > 250 

}
class Barrio{

  var elementos = []

  method esBueno()
  method esCopado() { //? 
    var cantCopado = elementos.count({ b => b.esBueno()})
    var cantNoCopado = elementos.count({ b => not b.esBueno()})
    return cantCopado > cantNoCopado
  }

  method agregarElementos(unElemento) {
    elementos.add(unElemento)
  }
// esta una forma para no hacer el method agregarElemento(), se instancia direcatamente de la consola (esta claro que las huertas esten instanciado anteriormente)
//* var barrio1 = new Barrio( elementos = [ huerta1, huerta2]) OJO que puede pisar cuando lo instancio
}
//* PLAGAS
class Plaga {
  const nivelDeDanio
  var poblacion //cant
  
  method poblacion() = poblacion
  method transmitirEnfermedades() = poblacion >= 10
  method atacar(unElemento) {
    unElemento.recibirAtaque(self)//tengo que hacer
  self.efecto()
  }
  method efecto() {
    poblacion = poblacion * 1.1
  }
}
class Cucarachas inherits Plaga {
  var pesoPromedio

  method nivelDeDanio() = poblacion / 2
  method cumpleCondicion() {return pesoPromedio >= 10 }
  
  override method transmitirEnfermedades() = super() && self.cumpleCondicion()
  override method efecto() {
    super() 
    pesoPromedio =+ 2
  }
}
class Mosquito inherits Plaga {
  const pesoPromedio

  method nivelDeDanio() = poblacion
  override method transmitirEnfermedades() = super() && poblacion % 3 == 0
}
class Pulga inherits Plaga {

  method nivelDeDanio() = poblacion * 2 
}
class Garrapata inherits Pulga {
  const pesoPromedio

  method nivelDeDanio() = poblacion / 2
  override method transmitirEnfermedades() = pesoPromedio >= 10
}
