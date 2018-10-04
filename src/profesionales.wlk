
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return universidad.provincias() }
	method honorariosPorHora() { return universidad.honorarios() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorario
	var provincia = []
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method setProvincias(provincias) { provincia.add(provincias) }
	method provinciasDondePuedeTrabajar() { return provincia }
	method setHonorarios(honorarios) { honorario = honorarios }
	method honorariosPorHora() { return honorario }
}
