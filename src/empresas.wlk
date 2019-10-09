import profesionales.*

class EmpresasDeservicios {
	var property horarios
	var profesionales = #{}

method cuantosProfesionalesUniverdidad(universidad){
	return profesionales.count({c=> c.universidad() == universidad})
}

//conjunto profesionales//
method profesionalesCaros(){
	return profesionales.filter({c => profesionales.honorariosPorHora() > horarios})
}
method universidadesFormadoras(){
	return profesionales.map({c=> profesionales.universidad()}).asSet()
}
method profesionalMasBarato(){
	return profesionales.min({c=> c.honorariosPorHora()})
}
method siEsDegenteAcotada(){
	return profesionales.all({c=> c.provinciasDondePuedeTrabajar() <= 3})
}
method puedeSatisfacer(solicitantes){
	return profesionales.any({p => solicitantes.puedeSerAtendida(p)})
}

}
