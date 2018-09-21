import golosinas.*
object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	 var property golosinasDeEl= [bombon, caramelo, alfajor, chupetin]
	
	method comprar(golosina) { golosinasDeEl.add(golosina) }
	method desechar(golosina) { golosinasDeEl.remove(golosina)}
	method hayGolosinasSinTacc() {return golosinasDeEl.any{golosina=>golosina.libreGluten()}}
	method preciosCuidados()  {return golosinasDeEl.all{golosina=>golosina.precio() <= 10}}
	method golosinaDeSabor(unSabor)  {return golosinasDeEl.find{golosina=>golosina.gusto() == unSabor}}
	method golosinasDeSabor(unSabor)  {return golosinasDeEl.filter{golosina=>golosina.gusto() == unSabor}}
	method sabores() { return golosinasDeEl.map { golosina => golosina.gusto() }.asSet() }

	method golosinaMasCara() { return golosinasDeEl.max { golosina => golosina.precio() } }

	method pesoGolosinas() { return golosinasDeEl.sum { golosina => golosina.peso() } }


	method golosinasFaltantes(golosinasDeseadas){

	golosinasDeEl.addAll(golosinasDeseadas)
	}

	
	
	method probarGolosinas() { golosinasDeEl.forEach{golosina=>golosina.mordisco()}}
}

