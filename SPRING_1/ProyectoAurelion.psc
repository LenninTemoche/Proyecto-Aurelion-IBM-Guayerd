Algoritmo ProyectoAurelion
	// Este pseudoc�digo simula el flujo de un proyecto de an�lisis de datos.
	// Las acciones se representan con el comando 'Escribir' para que el diagrama
	// de flujo refleje cada paso del proceso.
	// =================================================================
	// PASO 1: CONFIGURACI�N
	// =================================================================
	Escribir 'PASO 1: Configuraci�n'
	Escribir 'Importando librer�as (Pandas, Matplotlib)...'
	Escribir ''
	// =================================================================
	// PASO 2: CARGA DE DATOS
	// =================================================================
	Escribir 'PASO 2: Carga de Datos' // Salto de l�nea para claridad
	Escribir 'Cargando tabla Clientes...'
	Escribir 'Cargando tabla Productos...'
	Escribir 'Cargando tabla Ventas...'
	Escribir 'Cargando tabla Detalle_Venta...'
	Escribir ''
	// =================================================================
	// PASO 3: EXPLORACI�N Y LIMPIEZA DE DATOS
	// =================================================================
	Escribir 'PASO 3: Exploraci�n y Limpieza de Datos'
	// *** CORRECCI�N: Definir la variable UNA SOLA VEZ, antes del bucle ***
	Definir nombre_tabla Como Cadena
	// Bucle para simular la revisi�n de cada una de las 4 tablas
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		// Asignar nombre de tabla seg�n la iteraci�n
		Seg�n i Hacer
			1:
				nombre_tabla <- 'Clientes'
			2:
				nombre_tabla <- 'Productos'
			3:
				nombre_tabla <- 'Ventas'
			4:
				nombre_tabla <- 'Detalle_Venta'
		FinSeg�n
		Escribir 'Procesando tabla: ', nombre_tabla
		// Simulaci�n de decisi�n: �Hay valores nulos?
		Si (i MOD 2=1) Entonces
			Escribir '  -> Condici�n: Se encontraron valores nulos. Aplicando limpieza.'
		SiNo
			Escribir '  -> Condici�n: No se encontraron valores nulos.'
		FinSi
		// Simulaci�n de decisi�n: �Hay filas duplicadas?
		Si (i>2) Entonces
			Escribir '  -> Condici�n: Se encontraron filas duplicadas. Eliminando duplicados.'
		SiNo
			Escribir '  -> Condici�n: No se encontraron filas duplicadas.'
		FinSi
		Escribir '-----------------------------------------'
	FinPara
	Escribir 'Corrigiendo tipos de datos (ej. convirtiendo a Fecha)...'
	Escribir ''
	// =================================================================
	// PASO 4: UNI�N DE TABLAS
	// =================================================================
	Escribir 'PASO 4: Uni�n de Tablas'
	Escribir 'Uniendo Detalle_Venta con Productos...'
	Escribir 'Uniendo Ventas con el detalle completo...'
	Escribir 'Uniendo todo con Clientes para crear la tabla maestra...'
	Escribir ''
	// =================================================================
	// PASO 5: INGENIER�A DE CARACTER�STICAS
	// =================================================================
	Escribir 'PASO 5: Ingenier�a de Caracter�sticas'
	Escribir 'Creando nuevas columnas: A�oVenta, MesVenta, etc.'
	Escribir ''
	// =================================================================
	// PASO 6: AN�LISIS DE DATOS
	// =================================================================
	Escribir 'PASO 6: An�lisis de Datos'
	Escribir 'Calculando: Top productos por cantidad e ingresos.'
	Escribir 'Calculando: Ventas totales por categor�a.'
	Escribir 'Calculando: Top clientes por gasto total.'
	Escribir 'Calculando: Evoluci�n de ventas por mes.'
	Escribir 'Calculando: Ventas por ciudad.'
	Escribir ''
	// =================================================================
	// PASO 7: VISUALIZACI�N DE RESULTADOS
	// =================================================================
	Escribir 'PASO 7: Visualizaci�n de Resultados'
	Escribir 'Generando gr�fico de barras para categor�as...'
	Escribir 'Generando gr�fico de l�neas para evoluci�n de ventas...'
	Escribir 'Generando gr�fico de barras para top clientes...'
	Escribir ''
	Escribir 'Mostrando gr�ficos y resultados finales.'
FinAlgoritmo

Funcion SinTitulo
	
FinFuncion
