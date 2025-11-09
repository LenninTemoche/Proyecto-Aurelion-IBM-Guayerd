Algoritmo ANALISIS_DATOS_AURELION
	// ============================================
	// PASO 1: CONFIGURACIÓN DEL ENTORNO
	// ============================================
	// En PSeInt no se importan librerías, este paso es solo referencial
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
	// PASO 3: EXPLORACIÓN Y LIMPIEZA DE DATOS
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
	// PASO 4: MODELADO Y UNIÓN DE LOS DATOS
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
	// PASO 5: INGENIERÍA DE CARACTERÍSTICAS
	// ============================================
	Escribir 'Creando columnas nuevas: año, mes, día...'
	Escribir 'Calculando monto final de cada venta...'
	Escribir 'Categorizando descuentos y edades (si existen)...'
	// ============================================
	// PASO 6: ANÁLISIS DE DATOS Y MÉTRICAS CLAVE
	// ============================================
	// PRODUCTOS
	Escribir 'Calculando productos más vendidos...'
	Escribir 'Calculando productos con mayor facturación...'
	Escribir 'Analizando categorías y subcategorías...'
	// CLIENTES
	Escribir 'Buscando clientes más compradores...'
	Escribir 'Distribución por género, ciudad y edad...'
	Escribir 'Clientes activos vs inactivos...'
	// VENTAS
	Escribir 'Evolución mensual de ventas...'
	Escribir 'Días con mayor volumen de ventas...'
	Escribir 'Análisis de montos con/ sin descuentos...'
	// SUCURSALES Y VENDEDORES
	Escribir 'Ranking de sucursales por ingresos...'
	Escribir 'Ranking de vendedores por volumen...'
	Escribir 'Productividad media por vendedor...'
	// MEDIOS DE PAGO
	Escribir 'Proporción de uso de medios de pago...'
	// ============================================
	// PASO 7: VISUALIZACIONES
	// ============================================
	Escribir 'Generando gráficos:'
	Escribir '- Barras horizontales'
	Escribir '- RFM'
	Escribir '- Box plot'
	Escribir '- Violin plot'
	Escribir 'Intervalos de Confianza'
	Escribir '- Series de tiempo'
	Escribir '- Heatmap'
	// ============================================
	// FIN DEL PROGRAMA
	// ============================================
	Escribir '¡Proceso finalizado correctamente!'
FinAlgoritmo
