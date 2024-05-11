import random
the_strongest = 3
estudiantes = 1
huachipato = 1
gremio = 0
Partido = 0
Puntaje = (0, 1, 3)
#1
CT_St_Es = 0
#2
CT_St_Hu = 0
#3
CT_St_Gr = 1
#4
CT_Es_Hu = 1
#5
CT_Es_Gr = 0
#6
CT_Hu_Gr = 0


def Partidos(Partido, Puntaje, CT_St_Es, CT_St_Hu, CT_St_Gr, CT_Es_Hu, CT_Es_Gr, CT_Hu_Gr, the_strongest, estudiantes, huachipato, gremio):
    while Partido <= 5 :
        Equipos = random.randint(1, 6)
        #St-Es y Hu-Gr
        if Equipos == 1 and CT_St_Es <= 2 and  CT_Hu_Gr <= 2:
            CT_St_Es += 1
            Resultado = Resultados(Puntaje)
            the_strongest += Resultado[0]
            estudiantes += Resultado[1]
            CT_Hu_Gr += 1
            Resultado = Resultados(Puntaje)
            huachipato += Resultado[0]
            gremio += Resultado[1]
            Partido += 1
        #St-Hu y Es-Gr
        elif Equipos == 2 and CT_St_Hu < 2 and CT_Es_Gr < 2:
            CT_St_Hu += 1
            Resultado = Resultados(Puntaje)
            the_strongest += Resultado[0]
            huachipato += Resultado[1]
            CT_Es_Gr += 1
            Resultado = Resultados(Puntaje)
            estudiantes += Resultado[0]
            gremio += Resultado[1]
            Partido += 1
        #St-Gr y Es-Hu
        elif Equipos == 3 and CT_St_Gr < 2 and CT_Es_Hu < 2:
            CT_St_Gr += 1
            Resultado = Resultados(Puntaje)
            the_strongest = Resultado[0]
            gremio = Resultado[1]
            CT_Es_Hu += 1
            Resultado = Resultados(Puntaje)
            estudiantes = Resultado[0]
            huachipato = Resultado[1]
            Partido += 1
    if estudiantes < the_strongest and gremio < the_strongest and huachipato < the_strongest:
        print(f"""The strongest ha clasificado!!!
Strongest con {the_strongest} puntos
Estudiantes con {estudiantes} puntos
Huachipato con {huachipato} puntos
Gremio con {gremio} puntos""")
    else:
        print(f"""The strongest no ha clasificado
Strongest con {the_strongest} puntos
Estudiantes con {estudiantes} puntos
Huachipato con {huachipato} puntos
Gremio con {gremio} puntos""")
    
def Resultados(Puntaje):
    Seleccion = random.randint(1,3)
    #Empate
    if Seleccion == 1:
        Equipo1=Puntaje[1]
        Equipo2=Puntaje[1]
        return Equipo1, Equipo2
    #Gana    
    elif Seleccion == 2:
        Equipo1=Puntaje[2]
        Equipo2=Puntaje[0]
        return Equipo1, Equipo2
    #Pierde    
    elif Seleccion == 3:
        Equipo1=Puntaje[0]
        Equipo2=Puntaje[2]
        return Equipo1, Equipo2
       
Partidos(Partido, Puntaje, CT_St_Es, CT_St_Hu, CT_St_Gr, CT_Es_Hu, CT_Es_Gr, CT_Hu_Gr, the_strongest, estudiantes, huachipato, gremio)
    
    