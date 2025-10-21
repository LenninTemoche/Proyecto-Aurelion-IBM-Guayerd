Algoritmo ANALISIS_DATOS_AURELION
	// ============================================
	// PASO 1: CONFIGURACI�N DEL ENTORNO
	// ============================================
	// En PSeInt no se importan librer�as, este paso es solo referencial
	// ============================================
	// PASO 2: CARGA DE DATOS
	// ============================================
	Escribir 'Cargando archivos de datos...'
	Escribir 'Archivos cargados:'
	Escribir '- clientes_expanded'
	Escribir '- productos_expanded'
	Escribir '- ventas_expanded'
	Escribir '- detalle_ventas_expanded'
	Escribir '- medios_pago_expanded'
	Escribir '- sucursales_expanded'
	Escribir '- vendedores_expanded'
	// ============================================
	// PASO 3: EXPLORACI�N Y LIMPIEZA DE DATOS
	// ============================================
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir 'Explorando DataFrame ', i
		Escribir 'Mostrando columnas, tipos y nulos...'
		Si hay_nulos Entonces
			Escribir 'Limpiando valores nulos...'
		FinSi
		Si hay_duplicados Entonces
			Escribir 'Eliminando duplicados...'
		FinSi
	FinPara
	Escribir 'Convirtiendo columnas de fechas a formato datetime...'
	// ============================================
	// PASO 4: MODELADO Y UNI�N DE LOS DATOS
	// ============================================
	Escribir 'Unificando los datos paso a paso...'
	Escribir 'Unir detalle_ventas con productos'
	Escribir 'Unir resultado con ventas'
	Escribir 'Unir resultado con clientes'
	Escribir 'Unir resultado con sucursales'
	Escribir 'Unir resultado con vendedores'
	Escribir 'Unir resultado con medios de pago'
	Escribir 'Datos consolidados en df_master.'
	// ============================================
	// PASO 5: INGENIER�A DE CARACTER�STICAS
	// ============================================
	Escribir 'Creando columnas nuevas: a�o, mes, d�a...'
	Escribir 'Calculando monto final de cada venta...'
	Escribir 'Categorizando descuentos y edades (si existen)...'
	// ============================================
	// PASO 6: AN�LISIS DE DATOS Y M�TRICAS CLAVE
	// ============================================
	// PRODUCTOS
	Escribir 'Calculando productos m�s vendidos...'
	Escribir 'Calculando productos con mayor facturaci�n...'
	Escribir 'Analizando categor�as y subcategor�as...'
	// CLIENTES
	Escribir 'Buscando clientes m�s compradores...'
	Escribir 'Distribuci�n por g�nero, ciudad y edad...'
	Escribir 'Clientes activos vs inactivos...'
	// VENTAS
	Escribir 'Evoluci�n mensual de ventas...'
	Escribir 'D�as con mayor volumen de ventas...'
	Escribir 'An�lisis de montos con/ sin descuentos...'
	// SUCURSALES Y VENDEDORES
	Escribir 'Ranking de sucursales por ingresos...'
	Escribir 'Ranking de vendedores por volumen...'
	Escribir 'Productividad media por vendedor...'
	// MEDIOS DE PAGO
	Escribir 'Proporci�n de uso de medios de pago...'
	// ============================================
	// PASO 7: VISUALIZACIONES
	// ============================================
	Escribir 'Generando gr�ficos:'
	Escribir '- Barras horizontales'
	Escribir '- Gr�fico de torta'
	Escribir '- Series de tiempo'
	Escribir '- Heatmap'
	Escribir '- Boxplot'
	// ============================================
	// FIN DEL PROGRAMA
	// ============================================
	Escribir '�Proceso finalizado correctamente!'
FinAlgoritmo
