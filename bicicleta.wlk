import accesorios.*

class Bicicleta{
  const property rodado 
  const property largo
  const property marca
  const property accesorios


  method altura() = rodado * 2.5 + 15

  method velocidadCrucero() = if(largo > 120) rodado + 6 else rodado + 2

  method carga() = accesorios.sum({accesorio => accesorio.carga()})

  method peso() = (rodado / 2) + self.pesoTotalDeLosAccesorios()

  method pesoTotalDeLosAccesorios() = accesorios.sum({accesorio => accesorio.peso()})

  method tieneLuz() = accesorios.any({accesorio => accesorio.esLuminoso()})

}

