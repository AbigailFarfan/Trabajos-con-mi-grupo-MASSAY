numero = int(input("Ingrese el numero"))
cantidad = 1
while cantidad < numero:
    cantidad += 1
    if numero%cantidad == 0:
        if cantidad == numero:
            print("El numero es primo")
            cantidad += numero
        else:
            print("El numero no es primo")
            cantidad += numero
######################################################################
numero = int(input("Ingrese el numero"))
cantidad = 1
verificacion = 0
for i in range(1, numero):
    i += 1
    if numero%i == 0:
        if i == numero:
            verificacion += 1
        else:
            verificacion += 2
    if i == numero:
        if verificacion == 1:
            print("El numero es primo")
        else:
            print("El numero no es primo")
######################################################################
numero = int(input("Ingrese el numero: "))
primo = 0
cantidad = 1
while numero != 0:
    cantidad += 1
    if numero%cantidad == 0:
        if cantidad == numero:
            numero -= 1
            cantidad = 1
            primo += 1
            if numero == 1:
                numero -=1
                primo += 1
        else:
            cantidad = 1
            numero -= 1
print(f"La cantidad de primos es: {primo}")
