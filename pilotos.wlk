import escuderias.*
import neumaticos.*

object verstappen {
    var pGanados = 0
    var vueltasConLosNeumaticos = 0
    var vueltaRapida = false 
 
    const pIniciales = 437
    const property escuderia = redBull

    method puntos() = pGanados + pIniciales
    method ganarUnaCarrera(){ pGanados += 25}
    method hizoVueltaRapida(){vueltaRapida = true if (self.puntos() > 200 ) pGanados += 1}
    method sumarUnaVuelta(tipo){ vueltasConLosNeumaticos += 1}
    method entrarALosPitStop(){vueltasConLosNeumaticos = 0}
    method vueltasQueLeQuedan(tipo){ tipo.duracion()}
}

object norris {
    var pGanados = 0
    var vueltasConLosNeumaticos = 0
    var hizoVueltaRapida = false    
    
    const pIniciales = 374
    const property escuderia = mclaren
    method puntos() = pGanados + pIniciales
    method ganarUnaCarrera(){ pGanados += 25}
    method hacerVueltaRapida(){ hizoVueltaRapida = true if (self.puntos() > 200 ) pGanados += 1}
    method sumarUnaVuelta(){vueltasConLosNeumaticos += 1}
    method aLosPitStop(){vueltasConLosNeumaticos = 0}
}

object sainz {
    var pGanados = 0
    var vueltasConLosNeumaticos = 0    
    var hizoVueltaRapida = false 

    const pIniciales = 241
    const property escuderia = ferrari

    method puntos() = pGanados + pIniciales
    method ganarUnaCarrera(){ pGanados += 25 if(self.vieneDeRacha()) pGanados += 10}
    method hacerVueltaRapida(){hizoVueltaRapida = true}
    method sumarUnaVuelta(){ vueltasConLosNeumaticos += 1}
    method vieneDeRacha() = pGanados >= 25
    method aLosPitStop(){vueltasConLosNeumaticos = 0}
}

object leclerc {
    var pGanados = 0
    var vueltasConLosNeumaticos = 0    
    var hizoVueltaRapida = false  

    const pIniciales = 356
    const property escuderia = ferrari

    method puntos() = pGanados + pIniciales
    method ganarUnaCarrera(){ pGanados += 25}
    method hacerVueltaRapida(){hizoVueltaRapida = true pGanados += 2}
    method sumarUnaVuelta(){ vueltasConLosNeumaticos += 1}
    method entrarALosPitStop(){vueltasConLosNeumaticos = 0}

}

object piastri {
    var pGanados = 0
    var vueltasConLosNeumaticos = 0 
    var hizoVueltaRapida = false   
    
    const pIniciales = 292
    const property escuderia = mclaren
    
    method puntos() = pGanados + pIniciales
    method ganarUnaCarrera(){ pGanados += 25}
    method hacerVueltaRapida(){ hizoVueltaRapida = true}
    method sumarUnaVuelta(){ vueltasConLosNeumaticos += 1}
    method aLosPitStop(){vueltasConLosNeumaticos = 0}   
}