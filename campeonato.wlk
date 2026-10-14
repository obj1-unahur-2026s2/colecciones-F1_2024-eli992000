import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
   const pilotosDeTemporada = [verstappen, norris, leclerc, sainz, piastri]
   var primerLugar = null
   var segundoLugar =null
   var mejorVuelta = null
   var property temperaturaDeLaCarrera = null

   method registrarPiloto(piloto){ pilotosDeTemporada.add(piloto)}
   method darDeBajaPiloto(piloto){ pilotosDeTemporada.remove(piloto)}
   method registrarCierreFecha(primero, segundo, elMejor){ primerLugar = primero  segundoLugar = segundo mejorVuelta = elMejor}
   method primerLugar() = primerLugar
   method segundoLugar() = segundoLugar
   method mejorVuelta() = mejorVuelta
   method pilotoLider() = pilotosDeTemporada.max({p => p.puntos()})
   method puntosPorEscuderia(escuderia) = pilotosDeTemporada.filter({p => p.escuderia() == escuderia}).sum({p => p.puntos()})
   method deltaPuntos(ultimo) = self.pilotoLider().puntos() - ultimo.puntos()
   method esCompetitivo(ultimo) = self.deltaPuntos(ultimo) < 100
   method hayPilotoDeEscuderia(escuderia) = pilotosDeTemporada.any({p => p.escuderia() == escuderia}) // devuelve false, deberia devolver true
   
}