import profesionales.*
import empresas.*
class Persona {
	var property provincia 
	
	method puedeSerAtendida(profesional){
		return profesional.provinciasDondePuedeTrabajar().contains(provincia)
	}
	
}

class Institucion {
	var universidades = []
	
method puedeSerAtendida(profesional){
	return universidades.contains(profesional.universidad())
	
}


}
