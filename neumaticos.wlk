
object blando {
    const duracion = 15

    method duracion() = duracion
    method rendimiento(tCarrera) =  tCarrera < 25

}

object medio {
     const duracion = 30

    method duracion() = duracion
    method rendimiento(tCarrera) = tCarrera.between(25, 40)    


}

object duro {
     const duracion = 45

    method duracion() = duracion
    method rendimiento(tCarrera) =  tCarrera > 40

}