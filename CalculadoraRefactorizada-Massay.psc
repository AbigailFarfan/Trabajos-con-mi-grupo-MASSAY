Funcion SalidaFunciones <- ConversionVolumen ( PrimerNumero, Unidad )
	Mililitro=1
	Litro=1000 
	Galon=3785411.784
	MetroCubico=1000000
	Segun Unidad Hacer
		Caso "ml" o "Ml":
			PrimerConversion=PrimerNumero*Mililitro
		Caso "l" o "L":
			PrimerConversion=PrimerNumero*Litro
		Caso "Gal" o "gal":
			PrimerConversion=PrimerNumero*Galon
		Caso "m3" o "M3":
			PrimerConversion=PrimerNumero*MetroCubico
		De Otro Modo:
			Escribir "No coinciden las unidades de medida proporcionadas con el tipo de magnitud seleccionada"
	FinSegun
	PrimerConversion=PrimerNumero
	SegundaConversion=PrimerNumero/Litro
	TerceraConversion=PrimerNumero/Galon
	CuartaConversion=PrimerNumero/MetroCubico
	Escribir "Las conversiones es:"
	Escribir PrimerConversion, "ml"
	Escribir SegundaConversion, "L"
	Escribir TerceraConversion, "gal"
	Escribir CuartaConversion, "m3"
Fin Funcion

Funcion SalidaFunciones <- ConversionDistancia (PrimerNumero, Unidad)
	Metro=1
	Kilometro=1000
	Centimetro=0.01
	Milimetro=0.001
	Pie=0.3048
	Segun Unidad Hacer
		Caso "m" o "M":
			PrimerConversion=PrimerNumero*Metro
		Caso "km" o "Km":
			PrimerConversion=PrimerNumero*Kilometro
		Caso "cm" o "Cm":
			PrimerConversion=PrimerNumero*Centimetro
		Caso "mm" o "mm":
			PrimerConversion=PrimerNumero*Milimetro
		Caso "ft" o "Ft" o "Pies" o "pies" o "Pie" o "pie":
			PrimerConversion=PrimerNumero*Pie
		De Otro Modo:
			Escribir "No coinciden las unidades de medida proporcionadas con el tipo de magnitud seleccionada"			
	FinSegun
	PrimerConversion=PrimerNumero
	SegundaConversion=PrimerNumero/Kilometro
	TerceraConversion=PrimerNumero/Centimetro
	CuartaConversion=PrimerNumero/Milimetro
	QuintaConversion=PrimerNumero/Pie
	Escribir "Las conversiones es:"
	Escribir PrimerConversion, "m"
	Escribir SegundaConversion, "km"
	Escribir TerceraConversion, "cm"
	Escribir CuartaConversion, "mm"
	Escribir QuintaConversion, "pies"
Fin Funcion

Funcion SalidaFunciones <- ConversionMasa (PrimerNumero, Unidad)
	Tonelada=1000000
	Libra=453.592
	Arroba=11500 
	Kilogramo=1000
	Gramo=1
	Segun Unidad Hacer
		Caso "g" o "G":
			PrimerNumero= PrimerNumero*Gramo
		Caso "kg" o "Kg":
			PrimerNumero=PrimerNumero*Kilogramo
		Caso "@":
			PrimerNumero=PrimerNumero*Arroba
		Caso "lb" o "Lb":
			PrimerConversion=PrimerNumero*Libra
		Caso "t" o "T":
			PrimerConversion=PrimerNumero*tonelada
		De Otro Modo:
			Escribir "No coinciden las unidades de medida proporcionadas con el tipo de magnitud seleccionada"
	FinSegun
	PrimerConversion=PrimerNumero
	SegundaConversion=PrimerNumero/Arroba
	TerceraConversion=PrimerNumero/Kilogramo
	CuartaConversion=PrimerNumero/Libra
	QuintaConversion=PrimerNumero/Tonelada
	Escribir "Las conversiones es:"
	Escribir PrimerConversion, "g"
	Escribir SegundaConversion, "@"
	Escribir TerceraConversion, "kg"
	Escribir CuartaConversion, "lb"
	Escribir QuintaConversion, "t"
Fin Funcion

Funcion PrimerNumero <- Primeringo ( EntradaFuncion )
	Escribir "Escribe su cantidad"
	Leer PrimerNumero
Fin Funcion

Funcion  Unidad <- CantidadTipo ( EntradaFuncion )
	Escribir "Escribe su magnitud", " Ej: g, mg, ml, Km"
	Leer Unidad
Fin Funcion

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

Algoritmo CalculadoraMassay
	Definir Signo, SegundaEleccion, Unidad, SalidaFunciones, EntradaFuncion Como Caracter
    Definir seleccion Como Entero
    Definir PrimerNumero, SegundoNumero, RespuestaNumero Como Real
	Definir PrimerConversion, SegundaConversion, TerceraConversion, CuartaConversion, QuintaConversion Como Real
	Definir Kilogramo, Gramo, Tonelada, Libra, Arroba Como Real
	Definir Metro, Kilometro, Pie, Centimetro, Milimetro Como Real
	Definir Mililitro, Litro, Galon, MetroCubico Como Real
	Escribir "Escribe el modo de que funcion de la calculadora necesitas"
    Escribir "1.Operaciones basicas (+,-,x,/)"
    Escribir "2.Potenciacion"
    Escribir "3.Porcentaje"
    Escribir "4.Conversiones (Masa, Volumen, Distancia)"
    Escribir "5.Radicaciones"
    Leer seleccion
	Segun seleccion Hacer
		Caso 1:
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
		Caso 2:
			Escribir "Escribe el numero que sera la base"
			Leer PrimerNumero
			Escribir "Escribe el numero que sera el exponente"
			Leer SegundoNumero
			RespuestaNumero=PrimerNumero^SegundoNumero
			Escribir RespuestaNumero
		Caso 3:
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
		Caso 4:
			Escribir "Escribe la letra de la opcion"
			Escribir "A. Transformar unidades de masa (g, @, kg, lb, t)"
			Escribir "B. Transformar unidades de distancia  (m, km, cm, mm, ft/pies)"
			Escribir "C. Transformar unidades de volumen (ml, l, gal, m3)"
			Leer SegundaEleccion
			Segun SegundaEleccion
				Caso "A" o "a":
					Unidad = CantidadTipo(SegundaEleccion)
					PrimerNumero = Primeringo(SegundaEleccion)
					Escribir ConversionMasa(PrimerNumero, Unidad)
				Caso "B" o "b":
					Unidad = CantidadTipo(SegundaEleccion)
					PrimerNumero = Primeringo(SegundaEleccion)
					Escribir ConversionDistancia(PrimerNumero, Unidad)
				Caso "C" o "c":
					Unidad = CantidadTipo(SegundaEleccion)
					PrimerNumero = Primeringo(SegundaEleccion)
					Escribir ConversionVolumen(PrimerNumero, Unidad)
			FinSegun
		Caso 5:
			Escribir "Ingrese el número del cual desea obtener la raíz:"
			Leer PrimerNumero
			Escribir "Ingrese el índice de la radicación:"
			Leer SegundoNumero
			RespuestaNumero <- PrimerNumero ^ (1/SegundoNumero)
			Escribir "La radicación de índice ", SegundoNumero, " de ", PrimerNumero, " es ", RespuestaNumero
	FinSegun
FinAlgoritmo
