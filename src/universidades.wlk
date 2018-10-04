import profesionales.*

class Universidad {
	
	var provincias = []
	var honorarios = 0
	
	method setProvincias(provincia) { provincias.add(provincia)}
	method provincias() { return provincias }
	method setHonorarios(hono) { honorarios = hono }
	method honorarios() { return honorarios }
	
}
