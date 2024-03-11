Algoritmo Calculadora
    Definir num1, num2, resultado Como Entero // Definimos las variables num1, num2 y resultado como enteros
    Definir operacion Como Caracter // Definimos la variable operacion como un car�cter
	
    Escribir "Calculadora Simple" // Mensaje de bienvenida
    Escribir "------------------"
	
    Escribir "Paso 1: Ingrese el primer valor entero:" // Solicitamos al usuario el primer n�mero
    Leer num1 // Leemos el primer n�mero ingresado por el usuario
	
    Escribir "Paso 2: Ingrese el segundo valor entero:" // Solicitamos al usuario el segundo n�mero
    Leer num2 // Leemos el segundo n�mero ingresado por el usuario
	
    Escribir "Valores ingresados:" // Mostramos los valores ingresados por el usuario
    Escribir "N�mero 1: ", num1
    Escribir "N�mero 2: ", num2
	
    Escribir "Paso 3: Ingrese la operaci�n a realizar (suma, resta, multiplicaci�n o divisi�n):"
    Leer operacion // Leemos la operaci�n ingresada por el usuario
	
    // Evaluaci�n en paralelo de la operaci�n
    Segun operacion Hacer
        "suma":
            resultado <- num1 + num2 // Realizamos la suma directamente
        "resta":
            resultado <- num1 - num2 // Realizamos la resta directamente
        "multiplicaci�n":
            resultado <- 0
            Si num1 > num2 Entonces // Optimize la ejecuci�n para la multiplicaci�n
                Para i <- 1 Hasta num2 Hacer
                    resultado <- resultado + num1
                FinPara
            Sino
                Para i <- 1 Hasta num1 Hacer
                    resultado <- resultado + num2
                FinPara
            FinSi
        "divisi�n":
            resultado <- 0
            Si num2 <> 0 Entonces // Evitamos la divisi�n por cero
                Si num1 > num2 Entonces // Controlamos la divisi�n entera
                    Mientras num1 >= num2 Hacer
                        resultado <- resultado + 1
                        num1 <- num1 - num2
                    FinMientras
                Sino
                    Mientras num2 >= num1 Hacer
                        resultado <- resultado + 1
                        num2 <- num2 - num1
                    FinMientras
                FinSi
            Sino
                Escribir "Error: No se puede dividir por cero."
            FinSi
        De Otro Modo:
            Escribir "Operaci�n no v�lida"
    FinSegun
	
    // Mostrar el resultado si la operaci�n es v�lida
    Si operacion = "suma" o operacion = "resta" o operacion = "multiplicaci�n" o operacion = "divisi�n" Entonces
        Escribir "Operaci�n seleccionada: ", operacion // Mostramos la operaci�n seleccionada
        Escribir "Resultado: ", resultado // Mostramos el resultado
    FinSi
FinAlgoritmo
