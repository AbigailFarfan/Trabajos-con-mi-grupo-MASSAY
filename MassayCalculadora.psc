Algoritmo CALCULIN
	Definir Signo, SegundaEleccion, Unidad Como Caracter
    Definir seleccion Como Entero
	Definir UnidadConvertida1, UnidadConvertida2, UnidadConvertida3, UnidadConvertida4, UnidadConvertida5 Como Real
    Definir PrimerNumero, SegundoNumero, RespuestaNumero Como Real
	Definir PrimerConversion, SegundaConversion, TerceraConversion, CuartaConversion, QuintaConversion Como Real
	Definir Kilogramo, Gramo, Tonelada, Libra, Arroba Como Real
	Definir Metro, Kilometro, Pie, Centimetro, Milimetro Como Real
	Definir Mililitro, Litro, Galon, MetroCubico Como Real
	
	//Trabajo hecho
	//Marcelo Quiroga (200-362)
	//Santiago Vaca (1-68)
	//Yacyree Toro (130-200)
	//Sebastian Sea (68-130)
	//Abigail Farfan (363-371)

	Kilogramo=1000
	Gramo=1
	Tonelada=1000000
	Libra=453.592
	Arroba=11500
	
	Metro=1
	Kilometro=1000
	Centimetro=0.01
	Milimetro=0.001
	Pie=0.3048
	
	Mililitro=1
	Litro=1000 
	Galon=3785411.784
	MetroCubico=1000000
	
	
	Escribir "Escribe el modo de que funcion de la calculadora necesitas"
    Escribir "1.Operaciones basicas (+,-,x,/)"
    Escribir "2.Potenciacion"
    Escribir "3.Porcentaje"
    Escribir "4.Conversiones (Masa, Volumen, Distancia)"
    Escribir "5.Radicaciones"
    Leer seleccion
    Si seleccion=1 Entonces
        Escribir "Escribe el primer numero"
        Leer PrimerNumero
        Escribir "Escribe el signo de la operacion (+,-, x, /)"
        Leer Signo
        Escribir "Escribe el segundo numero"
        Leer SegundoNumero
        Segun Signo
            Caso "+":
                RespuestaNumero=PrimerNumero+SegundoNumero
            Caso "-":
                RespuestaNumero=PrimerNumero-SegundoNumero
            Caso "" o "x":
                RespuestaNumero=PrimerNumeroSegundoNumero
            Caso "/" o "??":
                RespuestaNumero=PrimerNumero/SegundoNumero
        FinSegun
        Escribir RespuestaNumero
    FinSi
    Si seleccion=2 Entonces
        Escribir "Escribe el numero que sera la base"
        Leer PrimerNumero
        Escribir "Escribe el numero que sera el exponente"
        Leer SegundoNumero
        RespuestaNumero=PrimerNumero^SegundoNumero
        Escribir RespuestaNumero
    FinSi
	Si seleccion=3 Entonces
		Escribir "Escoja la letra de la opcion de ejercicio de porcentaje"
		Escribir "A.Calcular el porcentaje de una cantidad dada"
		Escribir "B.Calcular el total conociendo el porcentaje"
		Escribir "C.Calcular qué porcentaje del total es una cantidad"
		Leer SegundaEleccion
		Segun SegundaEleccion
			Caso "A" o "a":
				Escribir "Escribe el Total"
				Leer PrimerNumero
				Escribir "Escribe un porcentaje de ese total (No escribas el signo porcentaje)"
				Leer SegundoNumero
				RespuestaNumero=PrimerNumero*SegundoNumero
				RespuestaNumero=RespuestaNumero/100
				Escribir "El ", SegundoNumero, "%", " de ", PrimerNumero, " es "  RespuestaNumero
			Caso "B" o "b":
				Escribir "Escribe el porcentaje (no pongas el signo porcentaje)"
				Leer PrimerNumero
				Escribir "Escribe cuanto del total es ese porcentaje"
				Leer SegundoNumero
				RespuestaNumero=SegundoNumero*100
				RespuestaNumero=RespuestaNumero/PrimerNumero
				Escribir "Si ", PrimerNumero, "%", " es ", PrimerNumero, ", el total es ", RespuestaNumero
			Caso "C" o "c":
				Escribir "Escribe el total"
				Leer PrimerNumero
				Escribir "Escribe una cantidad del total"
				Leer SegundoNumero
				RespuestaNumero=SegundoNumero*100
				RespuestaNumero=RespuestaNumero/PrimerNumero
				Escribir SegundoNumero, " es el ", RespuestaNumero, "% de " PrimerNumero
		FinSegun
	FinSi
	Si seleccion=4 Entonces
		Escribir "Escribe la letra de la opcion"
		Escribir "A. Transformar unidades de masa"
		Escribir "B. Transformar unidades de distancia"
		Escribir "C. Transformar unidades de volumen"
		Leer SegundaEleccion
		Segun SegundaEleccion
			Caso "A" o "a":
				Escribir "Escribe el numero que necesita ser convertido, aun no pongas su magnitud (kg, @, g, lb, t)"
				Leer PrimerNumero
				Escribir "Escribe su magnitud (g, @, kg, lb, t)"
				Leer Unidad
				Segun Unidad
					Caso "g", "G":
						PrimerConversion=PrimerNumero
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Arroba
						TerceraConversion=UnidadConvertida3/Kilogramo
						CuartaConversion=UnidadConvertida4/Libra
						QuintaConversion=UnidadConvertida5/Tonelada
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "g"
						Escribir SegundaConversion, "@"
						Escribir TerceraConversion, "kg"
						Escribir CuartaConversion, "lb"
						Escribir QuintaConversion, "t"
					Caso "kg" o "Kg":
						PrimerConversion=PrimerNumero*Kilogramo
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Arroba
						TerceraConversion=UnidadConvertida3/Kilogramo
						CuartaConversion=UnidadConvertida4/Libra
						QuintaConversion=UnidadConvertida5/Tonelada
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "g"
						Escribir SegundaConversion, "@"
						Escribir TerceraConversion, "kg"
						Escribir CuartaConversion, "lb"
						Escribir QuintaConversion, "t"
					Caso "@":
						PrimerConversion=PrimerNumero*Arroba
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Arroba
						TerceraConversion=UnidadConvertida3/Kilogramo
						CuartaConversion=UnidadConvertida4/Libra
						QuintaConversion=UnidadConvertida5/Tonelada
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "g"
						Escribir SegundaConversion, "@"
						Escribir TerceraConversion, "kg"
						Escribir CuartaConversion, "lb"
						Escribir QuintaConversion, "t"
			        Caso "lb" o "Lb":
						PrimerConversion=PrimerNumero*Libra
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Arroba
						TerceraConversion=UnidadConvertida3/Kilogramo
						CuartaConversion=UnidadConvertida4/Libra
						QuintaConversion=UnidadConvertida5/Tonelada
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "g"
						Escribir SegundaConversion, "@"
						Escribir TerceraConversion, "kg"
						Escribir CuartaConversion, "lb"
						Escribir QuintaConversion, "t"
					Caso "t" o "T":
						PrimerConversion=PrimerNumero*tonelada
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Arroba
						TerceraConversion=UnidadConvertida3/Kilogramo
						CuartaConversion=UnidadConvertida4/Libra
						QuintaConversion=UnidadConvertida5/Tonelada
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "g"
						Escribir SegundaConversion, "@"
						Escribir TerceraConversion, "kg"
						Escribir CuartaConversion, "lb"
						Escribir QuintaConversion, "t"
				FinSegun
			Caso "b" o "B":
				Escribir "Escribe el numero que necesita ser convertido, aun no pongas su magnitud (m, km, cm, mm, ft/pies)"
				Leer PrimerNumero
				Escribir "Escribe su magnitud (m, km, cm, mm, ft/pies)"
				Leer Unidad
				Segun Unidad
					Caso "m" o "M":
						PrimerConversion=PrimerNumero*Metro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Kilometro
						TerceraConversion=UnidadConvertida3/Centimetro
						CuartaConversion=UnidadConvertida4/Milimetro
						QuintaConversion=UnidadConvertida5/Pie
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "m"
						Escribir SegundaConversion, "km"
						Escribir TerceraConversion, "cm"
						Escribir CuartaConversion, "mm"
						Escribir QuintaConversion, "pies"
					Caso "km" o "Km":
						PrimerConversion=PrimerNumero*Kilometro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Kilometro
						TerceraConversion=UnidadConvertida3/Centimetro
						CuartaConversion=UnidadConvertida4/Milimetro
						QuintaConversion=UnidadConvertida5/Pie
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "m"
						Escribir SegundaConversion, "km"
						Escribir TerceraConversion, "cm"
						Escribir CuartaConversion, "mm"
						Escribir QuintaConversion, "pies"
					Caso "cm" o "Cm":
						PrimerConversion=PrimerNumero*Centimetro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Kilometro
						TerceraConversion=UnidadConvertida3/Centimetro
						CuartaConversion=UnidadConvertida4/Milimetro
						QuintaConversion=UnidadConvertida5/Pie
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "m"
						Escribir SegundaConversion, "km"
						Escribir TerceraConversion, "cm"
						Escribir CuartaConversion, "mm"
						Escribir QuintaConversion, "pies"
					Caso "mm" o "mm":
						PrimerConversion=PrimerNumero*Milimetro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Kilometro
						TerceraConversion=UnidadConvertida3/Centimetro
						CuartaConversion=UnidadConvertida4/Milimetro
						QuintaConversion=UnidadConvertida5/Pie
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "m"
						Escribir SegundaConversion, "km"
						Escribir TerceraConversion, "cm"
						Escribir CuartaConversion, "mm"
						Escribir QuintaConversion, "pies"
					Caso "ft" o "Ft" o "Pies" o "pies" o "Pie" o "pie":
						PrimerConversion=PrimerNumero*Pie
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Kilometro
						TerceraConversion=UnidadConvertida3/Centimetro
						CuartaConversion=UnidadConvertida4/Milimetro
						QuintaConversion=UnidadConvertida5/Pie
						Escribir "Las conversiones de es:"
						Escribir PrimerConversion, "m"
						Escribir SegundaConversion, "km"
						Escribir TerceraConversion, "cm"
						Escribir CuartaConversion, "mm"
						Escribir QuintaConversion, "pies"
				FinSegun
			Caso "c" o "C":
				Escribir "Escribe el numero que necesita ser convertido, aun no pongas su magnitud (ml, l, gal, m3)"
				Leer PrimerNumero
				Escribir "Escribe su magnitud (ml, l, gal, m3)"
				Leer Unidad
				Segun Unidad
					Caso "ml" o "Ml":
						PrimerConversion=PrimerNumero*Mililitro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Litro
						TerceraConversion=UnidadConvertida3/Galon
						CuartaConversion=UnidadConvertida4/MetroCubico
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "ml"
						Escribir SegundaConversion, "L"
						Escribir TerceraConversion, "gal"
						Escribir CuartaConversion, "m3"
					Caso "l" o "L":
						PrimerConversion=PrimerNumero*Litro
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Litro
						TerceraConversion=UnidadConvertida3/Galon
						CuartaConversion=UnidadConvertida4/MetroCubico
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "ml"
						Escribir SegundaConversion, "L"
						Escribir TerceraConversion, "gal"
						Escribir CuartaConversion, "m3"
					Caso "Gal" o "gal":
						PrimerConversion=PrimerNumero*Galon
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Litro
						TerceraConversion=UnidadConvertida3/Galon
						CuartaConversion=UnidadConvertida4/MetroCubico
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "ml"
						Escribir SegundaConversion, "L"
						Escribir TerceraConversion, "gal"
						Escribir CuartaConversion, "m3"
					Caso "m3" o "M3":
						PrimerConversion=PrimerNumero*MetroCubico
						UnidadConvertida1=PrimerConversion
						UnidadConvertida2=PrimerConversion
						UnidadConvertida3=PrimerConversion
						UnidadConvertida4=PrimerConversion
						UnidadConvertida5=PrimerConversion
						SegundaConversion=UnidadConvertida2/Litro
						TerceraConversion=UnidadConvertida3/Galon
						CuartaConversion=UnidadConvertida4/MetroCubico
						Escribir "Las conversiones es:"
						Escribir PrimerConversion, "ml"
						Escribir SegundaConversion, "L"
						Escribir TerceraConversion, "gal"
						Escribir CuartaConversion, "m3"
				FinSegun
		FinSegun
	FinSi
Si seleccion=5 Entonces
		Escribir "Ingrese el número del cual desea obtener la raíz:"
		Leer PrimerNumero
		Escribir "Ingrese el índice de la radicación:"
		Leer SegundoNumero
		RespuestaNumero <- PrimerNumero ^ (1/SegundoNumero)
		Escribir "La radicación de índice ", SegundoNumero, " de ", PrimerNumero, " es ", RespuestaNumero
	Fin Si
FinAlgoritmo
