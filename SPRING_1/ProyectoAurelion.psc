Algoritmo ProyectoAurelion
	// Este pseudocódigo simula el flujo de un proyecto de análisis de datos.
	// Las acciones se representan con el comando 'Escribir' para que el diagrama
	// de flujo refleje cada paso del proceso.
	// =================================================================
	// PASO 1: CONFIGURACIÓN
	// =================================================================
	Escribir 'PASO 1: Configuración'
	Escribir 'Importando librerías (Pandas, Matplotlib)...'
	Escribir ''
	// =================================================================
	// PASO 2: CARGA DE DATOS
	// =================================================================
	Escribir 'PASO 2: Carga de Datos' // Salto de línea para claridad
	Escribir 'Cargando tabla Clientes...'
	Escribir 'Cargando tabla Productos...'
	Escribir 'Cargando tabla Ventas...'
	Escribir 'Cargando tabla Detalle_Venta...'
	Escribir ''
	// =================================================================
	// PASO 3: EXPLORACIÓN Y LIMPIEZA DE DATOS
	// =================================================================
	Escribir 'PASO 3: Exploración y Limpieza de Datos'
	// *** CORRECCIÓN: Definir la variable UNA SOLA VEZ, antes del bucle ***
	Definir nombre_tabla Como Cadena
	// Bucle para simular la revisión de cada una de las 4 tablas
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		// Asignar nombre de tabla según la iteración
		Según i Hacer
			1:
				nombre_tabla <- 'Clientes'
			2:
				nombre_tabla <- 'Productos'
			3:
				nombre_tabla <- 'Ventas'
			4:
				nombre_tabla <- 'Detalle_Venta'
		FinSegún
		Escribir 'Procesando tabla: ', nombre_tabla
		// Simulación de decisión: ¿Hay valores nulos?
		Si (i MOD 2=1) Entonces
			Escribir '  -> Condición: Se encontraron valores nulos. Aplicando limpieza.'
		SiNo
			Escribir '  -> Condición: No se encontraron valores nulos.'
		FinSi
		// Simulación de decisión: ¿Hay filas duplicadas?
		Si (i>2) Entonces
			Escribir '  -> Condición: Se encontraron filas duplicadas. Eliminando duplicados.'
		SiNo
			Escribir '  -> Condición: No se encontraron filas duplicadas.'
		FinSi
		Escribir '-----------------------------------------'
	FinPara
	Escribir 'Corrigiendo tipos de datos (ej. convirtiendo a Fecha)...'
	Escribir ''
	// =================================================================
	// PASO 4: UNIÓN DE TABLAS
	// =================================================================
	Escribir 'PASO 4: Unión de Tablas'
	Escribir 'Uniendo Detalle_Venta con Productos...'
	Escribir 'Uniendo Ventas con el detalle completo...'
	Escribir 'Uniendo todo con Clientes para crear la tabla maestra...'
	Escribir ''
	// =================================================================
	// PASO 5: INGENIERÍA DE CARACTERÍSTICAS
	// =================================================================
	Escribir 'PASO 5: Ingeniería de Características'
	Escribir 'Creando nuevas columnas: AñoVenta, MesVenta, etc.'
	Escribir ''
	// =================================================================
	// PASO 6: ANÁLISIS DE DATOS
	// =================================================================
	Escribir 'PASO 6: Análisis de Datos'
	Escribir 'Calculando: Top productos por cantidad e ingresos.'
	Escribir 'Calculando: Ventas totales por categoría.'
	Escribir 'Calculando: Top clientes por gasto total.'
	Escribir 'Calculando: Evolución de ventas por mes.'
	Escribir 'Calculando: Ventas por ciudad.'
	Escribir ''
	// =================================================================
	// PASO 7: VISUALIZACIÓN DE RESULTADOS
	// =================================================================
	Escribir 'PASO 7: Visualización de Resultados'
	Escribir 'Generando gráfico de barras para categorías...'
	Escribir 'Generando gráfico de líneas para evolución de ventas...'
	Escribir 'Generando gráfico de barras para top clientes...'
	Escribir ''
	Escribir 'Mostrando gráficos y resultados finales.'
FinAlgoritmo

Funcion SinTitulo
	
FinFuncion
