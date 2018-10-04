import profesionales.*
import universidades.*

class Empresas {
	
	var honorarios = 0
	var profesionales = []
	
	method setHonorarios(hono) { honorarios = hono }
	method honorariosDeReferencia() { return honorarios }
	method agregarProfesionales(profe) { profesionales.add(profe)}
	method profesionales() { return profesionales }
	method profesionalesCaros() { 
		return profesionales.filter({ profe => profe.honorariosPorHora() > honorarios })
	}
	
	method profesionalMasBarato() { 
		return profesionales.min({ profe => profe.honorariosPorHora()})
	}
	
	method provinciaCubierta(provincia) {
		return profesionales.filter({ profe => profe.provinciasDondePuedeTrabajar() == provincia})
	}
	
	method cantidadPorProvincia(universidad) { 
		return profesionales.count({profe => profe.universidad() == universidad})
	}
	
	
	
}
