Algoritmo  Cajero
	Definir Pin, PinCorreo, num, PinActual, NuevoPin, ConfirmacionPin, num1, numcuenta, num2, dinero, num3 Como Entero
	Definir Acceso, tarjeta, nombre, acept, CorreoElectronico, ExistenciaTarjeta, ValorExistenciaTarjeta, Idioma, EleccionIdioma, RetiroRapido, EleccionRecibo, Recibo Como Caracter
	Escribir "Tienes tarjeta? (Si/No)"
	Leer ExistenciaTarjeta
	ValorExistenciaTarjeta = Mayusculas(ExistenciaTarjeta)
	Si ValorExistenciaTarjeta = "SI" Entonces
		Escribir "Introduzca la tarjeta"
		Escribir " "
		Escribir "Introduzca el PIN"
		Pin=Aleatorio (1000,9999)
		Escribir " "
		Acceso = "SI"
	SiNo
		Escribir "Introduzca su Correo Electronico"
		Leer CorreoElectronico
		Escribir "introduzca el pin que le llego al correo electronico"
		PinCorreo=Aleatorio(1000,9999)
		Escribir " "
		Acceso = "SI"
	FinSi
	Si Acceso = "SI" Entonces
		Escribir "Seleccione su idioma"
		Escribir "A. Ingles"
		Escribir "B. Español"
		Leer Idioma
		EleccionIdioma = Mayusculas(Idioma)
		Segun EleccionIdioma
			Caso "ESPAÑOL" O "B":
				Escribir "Elige una de las siguientes opciones"
				Escribir "1. Retiro rápido (100-700 Bs)"
				Escribir "2. Retiro"
				Escribir "3. Servicios"
				Escribir "4. Cambio de pin"
				Escribir "5. Consulta de saldo"
				Escribir "6. Extracto"
				Escribir "7. Deposito"
				Leer num
				Segun num Hacer
					Caso 1: 
						Escribir"Por favor, seleccione la cantidad de su efectivo"
						Escribir "1. 100 Bs"
						Escribir "2. 250 Bs"
						Escribir "3. 500 Bs"
						Escribir "4. 700 Bs"
						Leer RetiroRapido
						Escribir "Desea su recibo? (Si/No)"
						Leer Recibo
						EleccionRecibo = Mayusculas(Recibo)
						Si EleccionRecibo = "SI" Entonces
							Escribir "Retire su recibo"
						FinSi
					Caso 2:
						Escribir "Escriba la cantidad de dinero (Bs) a retirar"
						Leer DineroRetiro
						Escribir "Se ha retirado ", DineroRetiro, " Bs"
					Caso 3: 
						Escribir "Esta opcion no se escuentra dispoble en estos momentos mil disculpas"
					Caso 4:
						Escribir "Ingrese el pin actual"
						Escribir " "
						Escribir "Ingrese el nuevo pin"
						Leer NuevoPin
						Escribir "Confierme el nuevo pin"
						Leer ConfirmacionPin
						si NuevoPin=ConfirmacionPin Entonces
							Escribir "Su pin fue cambiado exitosamente"
							Escribir "Gracias por su servicios"
						SiNo
							Escribir "Los caracteres no coinciden"
							Escribir "Gracias por su servicios"
						FinSi
					Caso 5:
						Saldo = Aleatorio(1,1000000)
						Escribir "Su saldo actual es ", Saldo, " Bs"
					Caso 6: 
						Escribir "Retire su Extracto"
					Caso 7:
						Escribir "Seleccione el tipo de cuenta"
						Escribir "1. Cuenta propia"
						Escribir "2. Cuenta terceros"
						Escribir "3. Otros bancos"
						Leer num1
						Segun num1 Hacer
							1:
								Escribir "Seleccione la moneda de la transacción"
								Escribir "1. Bolivianos"
								Escribir "2. Dólares"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Ingrese el número de cuenta"
										Leer numcuenta
										Escribir "Ingrese su nombre"
										Leer nombre
										Escribir "Ingrese el monto en bolivianos"
										Escribir "Bs:"
										Leer dinero
										Escribir "Confirme los datos de la transferencia"
										Escribir "Cuenta destinada: ", numcuenta
										Escribir "Usuario: ", nombre
										Escribir "Monto: ", dinero, " Bs"
										Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Su transferencia se realizó exitosamente"
											'N':
												Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
											De Otro Modo:
												Escribir "Carácter inválido"
										Fin Segun
									2:
										Escribir "Ingrese el número de cuenta"
										Leer numcuenta
										Escribir "Ingrese su nombre"
										Leer nombre
										Escribir "Ingrese el monto en dólares"
										Escribir "$:"
										Leer dinero
										Escribir "Confirme los datos de la transferencia"
										Escribir "Cuenta destinada: ", numcuenta
										Escribir "Usuario: ", nombre
										Escribir "Monto: ", dinero, " $"
										Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Su transferencia se realizó exitosamente"
											'N':
												Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
											De Otro Modo:
												Escribir "Carácter inválido"
										Fin Segun
									De Otro Modo:
										Escribir "Carácter inválido"
								Fin Segun
							2:
								Escribir "Seleccione la moneda de la transacción"
								Escribir "1. Bolivianos"
								Escribir "2. Dólares"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Ingrese el número de cuenta"
										Leer numcuenta
										Escribir "Ingrese el nombre del usuario"
										Leer nombre
										Escribir "Ingrese el monto en bolivianos"
										Escribir "Bs:"
										Leer dinero
										Escribir "Confirme los datos de la transferencia"
										Escribir "Cuenta destinada: ", numcuenta
										Escribir "Usuario: ", nombre
										Escribir "Monto: ", dinero, " Bs"
										Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Su transferencia se realizó exitosamente"
											'N':
												Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
											De Otro Modo:
												Escribir "Carácter inválido"
										Fin Segun
									2:
										Escribir "Ingrese el número de cuenta"
										Leer numcuenta
										Escribir "Ingrese el nombre del usuario"
										Leer nombre
										Escribir "Ingrese el monto en dólares"
										Escribir "$:"
										Leer dinero
										Escribir "Confirme los datos de la transferencia"
										Escribir "Cuenta destinada: ", numcuenta
										Escribir "Usuario: ", nombre
										Escribir "Monto: ", dinero, " $"
										Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Su transferencia se realizó exitosamente"
											'N':
												Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
											De Otro Modo:
												Escribir "Carácter inválido"
										Fin Segun
									De Otro Modo:
										Escribir "Carácter inválido"
								Fin Segun
							3:
								Escribir "Seleccione la moneda de la transacción"
								Escribir "1. Bolivianos"
								Escribir "2. Dólares"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Seleccione el banco"
										Escribir "1. BCR"
										Escribir "2. BGA"
										Escribir "3. BIE"
										Escribir "4. BIS"
										Escribir "5. BME"
										Escribir "6. BNB"
										Leer num3
										Segun num3 Hacer
											1:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											2:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											3:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											4:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitósamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											5:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											6:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en bolivianos"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " Bs"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											De Otro Modo:
												Escribir "Carácter inválido"
										FinSegun
									2:
										Escribir "Seleccione el banco"
										Escribir "1. BCR"
										Escribir "2. BGA"
										Escribir "3. BIE"
										Escribir "4. BIS"
										Escribir "5. BME"
										Escribir "6. BNB"
										Leer num3
										Segun num3 Hacer
											1:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											2:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											3:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											4:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											5:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
														Escribir "Carácter inválido"
												Fin Segun
											6:
												Escribir "Ingrese el número de cuenta"
												Leer numcuenta
												Escribir "Ingrese el nombre del usuario"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirme los datos de la transferencia"
												Escribir "Cuenta destinada: ", numcuenta
												Escribir "Usuario: ", nombre
												Escribir "Monto: ", dinero, " $"
												Escribir "Escriba S para confirmar y N si es que algún dato es incorrecto"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Su transferencia se realizó exitosamente"
													'N':
														Escribir "Vuelva a introducir los datos correspondientes a la transferencia"
													De Otro Modo:
													Escribir "Carácter inválido"
												Fin Segun
											De Otro Modo:
											Escribir "Carácter inválido"
										FinSegun
									De Otro Modo:
									Escribir "Carácter inválido"
							Fin Segun
						De Otro Modo:
							Escribir "Carácter inválido"
						Fin Segun
				FinSegun
			Caso "INGLES" O "A": 
				Escribir "Choose one number of the following options"
				Escribir "1. Quick withdrawal (100-700 Bs)"
				Escribir "2. Withdrawal"
				Escribir "3. Services"
				Escribir "4. Change of pin"
				Escribir "5. Balance inquiry"
				Escribir "6. Extract"
				Escribir "7. Deposit"
				Leer num
				Segun num Hacer
					Caso 1: 
						Escribir"Please select your cash amount"
						Escribir "1. 100 Bs"
						Escribir "2. 250 Bs"
						Escribir "3. 500 Bs"
						Escribir "4. 700 Bs"
						Leer RetiroRapido
						Escribir "Do you want your receipt? (YES/NO)"
						Leer Recibo
						EleccionRecibo = Mayusculas(Recibo)
						Si EleccionRecibo = "SI" o EleccionRecibo = "YES" Entonces
							Escribir "Withdraw your statement"
						FinSi
					Caso 2:
						Escribir "Enter the amount of money to withdraw (on Bs)"
						Leer DineroRetiro
						Escribir "The withdrawal has been " DineroRetiro " Bs"
						Escribir "Do you want your receipt? (YES/NO)"
						Leer Recibo
						EleccionRecibo = Mayusculas(Recibo)
						Si EleccionRecibo = "SI" o EleccionRecibo = "YES" Entonces
							Escribir "Withdraw your statement"
						FinSi
					Caso 3:
						Escribir "This option is not available at the moment, my apologies"
					Caso 4:
						Escribir "Enter current pin"
						Escribir " "
						Escribir "Enter the new pin"
						Leer NuevoPin
						Escribir "Confirm the new pin"
						Leer ConfirmacionPin
						si NuevoPin=ConfirmacionPin Entonces
							Escribir "Your pin was changed successfully"
							Escribir "Thank you for your services"
						SiNo
							Escribir "Characters do not match"
							Escribir "Thank you for your services"
						FinSi
					Caso 5:
						Saldo = Aleatorio(1,1000000)
						Escribir "Your current balance is " Saldo " Bs"
					Caso 6:
						Escribir "Withdraw your statement"
					Caso 7:
						Escribir "Select the type of account"
						Escribir "1. Own account"
						Escribir "2. Third-party account"
						Escribir "3. Other banks"
						Leer num1
						Segun num1 Hacer
							1:
								Escribir "Select the currency of the transaction"
								Escribir "1. Bolivians"
								Escribir "2. Dollars"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Enter the account number"
										Leer numcuenta
										Escribir "Enter your name"
										Leer nombre
										Escribir "Enter the amount in bolivians"
										Escribir "Bs:"
										Leer dinero
										Escribir "Confirm the transfer data"
										Escribir "Destination account: ", numcuenta
										Escribir "User: ", nombre
										Escribir "Amount: ", dinero, " Bs"
										Escribir "Type S to confirm and N if any data is incorrect"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Your transfer was successful"
											'N':
												Escribir "Re-enter the corresponding transfer data"
											De Otro Modo:
												Escribir "Invalid character"
										Fin Segun
									2:
										Escribir "Enter the account number"
										Leer numcuenta
										Escribir "Enter your name"
										Leer nombre
										Escribir "Enter the amount in dollars"
										Escribir "$:"
										Leer dinero
										Escribir "Confirm the transfer data"
										Escribir "Destination account: ", numcuenta
										Escribir "User: ", nombre
										Escribir "Amount: ", dinero, " $"
										Escribir "Type S to confirm and N if any data is incorrect"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Your transfer was successful"
											'N':
												Escribir "Re-enter the corresponding transfer data"
											De Otro Modo:
												Escribir "Invalid character"
										Fin Segun
									De Otro Modo:
										Escribir "Invalid character"
								Fin Segun
							2:
								Escribir  "Select the currency of the transaction"
								Escribir "1. Bolivians"
								Escribir "2. Dollars"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Enter the account number"
										Leer numcuenta
										Escribir "Enter the name of the user"
										Leer nombre
										Escribir "Enter the amount in bolivians"
										Escribir "Bs:"
										Leer dinero
										Escribir "Confirm the transfer data"
										Escribir "Destination account: ", numcuenta
										Escribir "User: ", nombre
										Escribir "Amount: ", dinero, " Bs"
										Escribir "Type S to confirm and N if any data is incorrect"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Your transfer was successful"
											'N':
												Escribir "Re-enter the corresponding transfer data"
											De Otro Modo:
												Escribir "Invalid character"
										Fin Segun
									2:
										Escribir "Enter the account number"
										Leer numcuenta
										Escribir "Enter the name of the user"
										Leer nombre
										Escribir "Enter the dollar amount"
										Escribir "$:"
										Leer dinero
										Escribir "Confirm the transfer data"
										Escribir "Destination account: ", numcuenta
										Escribir "User: ", nombre
										Escribir "Monto: ", dinero, " $"
										Escribir "Type S to confirm and N if any data is incorrect"
										Leer acept
										Segun acept Hacer
											'S':
												Escribir "Your transfer was successful"
											'N':
												Escribir "Re-enter the corresponding transfer data"
											De Otro Modo:
												Escribir "Carácter inválido"
										Fin Segun
									De Otro Modo:
										Escribir "Invalid character"
								Fin Segun
							3:
								Escribir "Select the transaction currency"
								Escribir "1. Bolivians"
								Escribir "2. Dólares"
								Leer num2
								Segun num2 Hacer
									1:
										Escribir "Select the bank"
										Escribir "1. BCR"
										Escribir "2. BGA"
										Escribir "3. BIE"
										Escribir "4. BIS"
										Escribir "5. BME"
										Escribir "6. BNB"
										Leer num3
										Segun num3 Hacer
											1:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											2:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											3:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											4:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											5:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											6:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the amount in bolivians"
												Escribir "Bs:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " Bs"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											De Otro Modo:
												Escribir "Invalid character"
										FinSegun
									2:
										Escribir "Select the bank"
										Escribir "1. BCR"
										Escribir "2. BGA"
										Escribir "3. BIE"
										Escribir "4. BIS"
										Escribir "5. BME"
										Escribir "6. BNB"
										Leer num3
										Segun num3 Hacer
											1:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the dollar amount"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											2:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the dollar amount"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											3:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the dollar amount"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											4:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the dollar amount"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											5:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Enter the dollar amount"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
														Escribir "Invalid character"
												Fin Segun
											6:
												Escribir "Enter the account number"
												Leer numcuenta
												Escribir "Enter the name of the user"
												Leer nombre
												Escribir "Ingrese el monto en dólares"
												Escribir "$:"
												Leer dinero
												Escribir "Confirm the transfer data"
												Escribir "Destination account: ", numcuenta
												Escribir "User: ", nombre
												Escribir "Amount: ", dinero, " $"
												Escribir "Type S to confirm and N if any data is incorrect"
												Leer acept
												Segun acept Hacer
													'S':
														Escribir "Your transfer was successful"
													'N':
														Escribir "Re-enter the corresponding transfer data"
													De Otro Modo:
													Escribir "invalid character"
												Fin Segun
											De Otro Modo:
											Escribir "invalid character"
										FinSegun
									De Otro Modo:
									Escribir "invalid character"
								Fin Segun
							De Otro Modo:
								Escribir "invalid character"
						Fin Segun
				FinSegun
		FinSegun
	SiNo
		Escribir "Incorrecto, vuelva a intentarlo"
	FinSI
FinAlgoritmo
