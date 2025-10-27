## ✅ Información General

- **Nombre del proyecto**: Tienda Aurelion  
- **Alumno**: Lennin Billey Temoche Gómez  
- **Curso**: Fundamentos de Inteligencia Artificial
- **Camada**: 11 martes 
- **Docente**: Mirta Gladys Julio  
- **Fecha de entrega**: Noviembre del 2025

---

## 1.1 Tema, Problema y Solución

### ✅ Tema  
**Aplicación de Inteligencia Artificial para la optimización estratégica de ventas mediante el análisis integrado de datos comerciales en la tienda Aurelion.**

### ✅ Problema  
La tienda Aurelion recopila una gran cantidad de datos sobre clientes, productos y ventas. Sin embargo, no cuenta con un sistema que permita analizarlos de forma integral, lo que genera los siguientes desafíos:

1. **Desconocimiento del cliente**  
   No se identifican patrones de compra, lo que impide reconocer a los clientes más valiosos y sus preferencias.

2. **Estrategias de venta genéricas**  
   Las campañas de marketing y promociones se aplican de forma uniforme, lo que reduce el retorno de inversión y genera oportunidades perdidas.

3. **Ineficiencia operativa**  
   Consultas básicas como *“¿Cuál fue el producto más vendido el mes pasado?”* requieren procesos manuales que consumen tiempo y recursos.

La empresa opera de forma **reactiva**, sin una estrategia basada en datos que le permita tomar decisiones proactivas para impulsar su crecimiento.

### ✅ Solución  
Implementar un **flujo de trabajo analítico automatizado en Python** que convierta los datos crudos en **información accionable**. Este flujo consta de tres etapas principales:

1. **Consolidación de datos**  
   Integración de las tablas `Clientes`, `Productos`, `Ventas` y `Detalle de Venta` en un único DataFrame maestro, generando una visión 360° del negocio.

2. **Análisis descriptivo automatizado**  
   Generación automática de respuestas a preguntas clave del negocio:
   - Top 10 productos más vendidos (por cantidad e ingresos).
   - Ranking de clientes más valiosos.
   - Ventas por categoría y ciudad.
   - Evolución mensual de ventas.

3. **Base para modelos de IA**  
   Este análisis servirá como punto de partida para futuras aplicaciones de Machine Learning, como la segmentación de clientes mediante algoritmos como K-Means.

**Herramientas utilizadas**:  
- **Python**: `pandas`, `matplotlib`, `seaborn`  
- **GitHub Copilot**: Asistente de codificación para acelerar el desarrollo y sugerir soluciones eficientes en el manejo de datos.

---

## 1.2 Dataset de Referencia

### ✅ Fuente  
Los datos proporcionados por la cátedra en formato Excel (.xlsx), fueron expandidos y distribuidos en siete archivos:

- `clientes_expanded.xlsx`  
- `productos_expanded.xlsx`  
- `ventas_expanded.xlsx`  
- `detalle_ventas_expanded.xlsx`  
- `sucursales_expanded.xlsx`  
- `vendedores_expanded.xlsx`  
- `medios_pago_expanded.xlsx`

### ✅ Descripción  
El conjunto de datos representa un ecosistema de ventas minoristas, capturando las interacciones entre clientes, productos, sucursales y métodos de pago. Permite responder preguntas como:

- **¿Qué se vendió?** → Productos  
- **¿Quién compró?** → Clientes  
- **¿Cuándo?** → Fecha de la transacción  
- **¿Dónde?** → Sucursal de la venta  
- **¿Cómo?** → Medio de pago y cantidad adquirida

### ✅ Escala del Dataset  

| Tabla                 | Registros |
|-----------------------|-----------|
| clientes_expanded     | 100       |
| productos_expanded    | 100       |
| ventas_expanded       | 720       |
| detalle_ventas_expanded| 2016     |
| sucursales_expanded   | 6         |
| vendedores_expanded   | 36        |
| medios_pago_expanded  | 4         |

### ✅ Modelo de Datos  
Se emplea un **modelo estrella expandido**, compuesto por:

- **Tablas de dimensión** (describen entidades):
  - `Clientes`
  - `Productos`
  - `Sucursales`
  - `Categorías`
  - `Métodos de Pago`

- **Tablas de hechos** (registran transacciones):
  - `Ventas`
  - `Detalle de Venta`

---



### ✅ Estructura Detallada de las Tablas

#### 1. Tabla de Dimensión: `CLIENTES`

| Columna       | Tipo de Dato | Descripción                          |
|---------------|--------------|--------------------------------------|
| `id_Cli`      | Entero       | Identificador único (Clave Primaria) |
| `Nombre`      | Texto        | Nombre y apellido del cliente        |
| `Mail`        | Texto        | Dirección de correo electrónico      |
| `Ciudad`      | Texto        | Ciudad de residencia                 |
| `FechaDeAlta` | Fecha        | Fecha de registro del cliente        |

#### 2. Tabla de Dimensión: `PRODUCTOS`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `Id_Prod`       | Entero       | Identificador único (Clave Primaria) |
| `Nombre`        | Texto        | Nombre comercial del producto        |
| `Categoría`     | Texto        | Categoría a la que pertenece         |
| `PrecioUnitario`| Decimal      | Precio unitario de venta             |

#### 3. Tabla de Dimensión: `SUCURSALES`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_Sucursal`   | Entero       | Identificador único (Clave Primaria) |
| `Nombre`        | Texto        | Nombre de la sucursal                |
| `Ciudad`        | Texto        | Ciudad donde se encuentra            |

#### 4. Tabla de Dimensión: `CATEGORÍAS`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_Categoria`  | Entero       | Identificador único (Clave Primaria) |
| `Nombre`        | Texto        | Nombre de la categoría               |

#### 5. Tabla de Dimensión: `MÉTODOS_DE_PAGO`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_Metodo`     | Entero       | Identificador único (Clave Primaria) |
| `Nombre`        | Texto        | Nombre del método de pago            |

#### 6. Tabla de Hechos: `VENTAS`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_Vta`        | Entero       | Identificador único (Clave Primaria) |
| `Fecha`         | Fecha        | Fecha y hora de la venta             |
| `id_cliente`    | Entero       | Clave foránea a `CLIENTES`           |
| `id_Sucursal`   | Entero       | Clave foránea a `SUCURSALES`         |
| `medio_pago`    | Texto        | Método de pago (Tarjeta, Efectivo)   |

#### 7. Tabla de Hechos: `DETALLE_DE_VENTA`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_Vta`        | Entero       | Clave foránea a `VENTAS`             |
| `id_Prod`       | Entero       | Clave foránea a `PRODUCTOS`          |
| `Cantidad`      | Entero       | Número de unidades vendidas          |
| `Precio_Uni`    | Decimal      | Precio unitario al momento de venta  |
| `Importe`       | Decimal      | Cálculo: `Cantidad * Precio_Uni`     |

> **Notas**: Los campos redundantes deben ignorarse o eliminarse en el análisis. Se usan solo los IDs para mantener la integridad referencial.

---

## 1.3 Información, Pasos, Pseudocódigo y Diagrama del Programa

### ✅ Descripción del Funcionamiento  
El programa es un script en Python que automatiza el proceso de análisis de datos de la tienda Aurelion. Realiza:

1. **Carga** de los 7 archivos Excel.
2. **Limpieza** de datos (nulos, duplicados, tipos de datos).
3. **Unificación** en una tabla maestra (`df_master`).
4. **Ingeniería de características** (extracción de año, mes, día de semana).
5. **Análisis descriptivo** de 6 preguntas de negocio.
6. **Visualización** de resultados mediante gráficos.

Finalmente, presenta los resultados en consola y gráficos, sirviendo como base para decisiones estratégicas.

### ✅ Pasos del Desarrollo

1. **Cargar y Consolidar Datos**  
   Uso de `pandas.read_excel()` para cargar los archivos. Limpieza de nulos, eliminación de duplicados y unión de tablas mediante `merge()`.

2. **Crear Funciones de Búsqueda y Análisis**  
   Desarrollo de funciones modulares y reutilizables:
   - `obtener_top_productos_cantidad()`
   - `calcular_ventas_por_categoria()`
   - `identificar_top_clientes()`
   - `evolucion_ventas_mensual()`

3. **Interfaz Interactiva en Consola**  
   Implementación de un menú de texto que permite al usuario elegir qué análisis ejecutar sin reiniciar el programa.

4. **Validación de Errores**  
   Uso de bloques `try-except` para manejar:
   - Archivos no encontrados.
   - Rutas incorrectas.
   - Opciones inválidas en el menú.

5. **Integración con GitHub Copilot**  
   Copilot aceleró el desarrollo al:
   - Sugerir sintaxis de `groupby()`, `sort_values()`, `merge()`.
   - Generar plantillas de gráficos con `seaborn` y `matplotlib`.
   - Reducir errores de sintaxis en operaciones complejas.

### ✅ Pseudocódigo (Completo)

```plaintext
dame el codigo para seinpt : INICIO_PROGRAMA

// ============================================
// PASO 1: CONFIGURACIÓN DEL ENTORNO
// ============================================
IMPORTAR librerías necesarias:
    - pandas
    - matplotlib
    - seaborn
    - numpy (opcional para operaciones estadísticas)

// ============================================
// PASO 2: CARGA DE DATOS
// ============================================
CARGAR los siguientes DataFrames desde archivo o ruta:
    - clientes_expanded
    - productos_expanded
    - ventas_expanded
    - detalle_ventas_expanded
    - medios_pago_expanded
    - sucursales_expanded
    - vendedores_expanded

// ============================================
// PASO 3: EXPLORACIÓN Y LIMPIEZA DE DATOS
// ============================================
PARA cada tabla EN la lista de DataFrames:
    MOSTRAR columna, tipos de datos y valores nulos
    SI existen valores nulos:
        APLICAR estrategia de limpieza (rellenar, eliminar filas, etc.)
    SI existen duplicados:
        ELIMINAR duplicados si corresponde
FIN PARA

CONVERTIR columnas de fechas (fecha, fecha_alta, fecha_ingreso) al tipo datetime

// ============================================
// PASO 4: MODELADO Y UNIÓN DE LOS DATOS
// ============================================
// Se realizarán las uniones necesarias para formar un DataFrame maestro

UNIR detalle_ventas_expanded CON productos_expanded mediante id_producto ⇒ df_dv_prod
UNIR df_dv_prod CON ventas_expanded mediante id_venta ⇒ df_ventas_completas
UNIR df_ventas_completas CON clientes_expanded mediante id_cliente ⇒ df_vtas_clientes
UNIR df_vtas_clientes CON sucursales_expanded mediante id_sucursal ⇒ df_vtas_sucursal
UNIR df_vtas_sucursal CON vendedores_expanded mediante id_vendedor ⇒ df_vtas_vendedor
UNIR df_vtas_vendedor CON medios_pago_expanded mediante id_medio_pago ⇒ df_master

// df_master contendrá ahora información consolidada de cliente, producto, venta, sucursal, vendedor y medio de pago

// ============================================
// PASO 5: INGENIERÍA DE CARACTERÍSTICAS (FEATURE ENGINEERING)
// ============================================
CREAR nuevas columnas:
    - Año de venta (a partir de fecha)
    - Mes de venta
    - Día de la semana
    - Rango_etario_categorizado (opcional, basado en edad_rango)
    - Descuento_aplicado_pct_categorizado (segmentar nivel de descuentos)
    - Monto_final = subtotal - (subtotal * descuento_aplicado_pct)

// ============================================
// PASO 6: ANÁLISIS DE DATOS Y MÉTRICAS CLAVE
// ============================================

// ANÁLISIS DE PRODUCTOS
CALCULAR: Productos más vendidos (por cantidad total)
CALCULAR: Productos con mayor facturación (por subtotal o monto_final)
CALCULAR: Categorías y subcategorías más populares

// ANÁLISIS DE CLIENTES
CALCULAR: Clientes que más compran (por monto_total)
CALCULAR: Distribución por género, ciudad, edad
CALCULAR: Clientes inactivos vs activos

// ANÁLISIS DE VENTAS
ANALIZAR: Evolución de ventas por mes
ANALIZAR: Días de la semana con mayor volumen de ventas
ANALIZAR: Comparativa monto_bruto vs monto_neto, con descuentos

// ANÁLISIS DE SUCURSALES Y VENDEDORES
CALCULAR: Ranking sucursales por ingresos
CALCULAR: Vendedores con mayor volumen de ventas
CALCULAR: Productividad media por vendedor

// ANÁLISIS DE MEDIOS DE PAGO
CALCULAR: Proporción de medios de pago utilizados

// ============================================
// PASO 7: VISUALIZACIONES Y TABLEROS
// ============================================
GENERAR gráficos:
    - Barras horizontales (Top productos, Top clientes)
    - Torta (distribución medios de pago, productos por categoría)
    - Serie de tiempo (ventas por mes)
    - Calor o heatmap (ventas por sucursal y mes)
    - Boxplot (descuentos distribuidos por categoría o ciudad)

// ============================================
// FIN DEL PROGRAMA
// ============================================
FINALIZAR_PROGRAMA
```

<h3>🖼️ Diagrama de Flujo (Resumen Visual)</h3>
<p><em>Nota: El diagrama completo fue generado en PSeInt y se adjunta como imagen en el documento original. A continuación se presenta su estructura lógica:</em></p>

<p align="center">
  <a href="pseint1.png">
    <img src="pseint1.png" alt="Diagrama de Flujo" width="500">
  </a>
</p>


---

## 1.4 Sugerencias y Mejoras Aplicadas con GitHub Copilot

### ✅ Sugerencias Aceptadas

| Sugerencia | Beneficio |
|----------|-----------|
| Autocompletado de operaciones `groupby().sum().sort_values()` | Aceleró la creación de análisis de agregación. |
| Generación de plantillas de gráficos con `sns.barplot()`, `plt.title()` | Permitió centrarse en personalización estética. |
| Sugerencias de manejo de fechas con `pd.to_datetime()` | Mejoró la precisión en el análisis temporal. |

### ✅ Sugerencias Descartadas

| Sugerencia | Razón de Rechazo |
|----------|------------------|
| Uso de `lambda` o `list comprehensions` complejas para filtrado | Reducía legibilidad; se prefirió `.loc[]` y métodos explícitos de Pandas. |
| Implementación de K-Means para segmentación de clientes | Fuera de alcance: el proyecto es de **análisis descriptivo**, no predictivo. |

---

## 1.5 Programa en Python (Implementación en Jupyter Notebook)

### Archivo: `proyecto_aurelion.ipynb`

### ✅ Funcionalidad  
El programa se implementa como un **Jupyter Notebook**, no como un script de consola. Esto permite:

- Documentar cada paso con **celdas Markdown** (explicaciones).
- Ejecutar **celdas de código individualmente** (Shift + Enter).
- Ver resultados **en línea** (tablas, gráficos, resúmenes).

### Interacción del Usuario

1. **Leer la documentación** en celdas Markdown.
2. **Ejecutar celdas de código en orden**.
3. **Observar resultados inmediatos**:
   - `df.head()`
   - `df.info()`
   - Gráficos integrados con `matplotlib`/`seaborn`.

### Ventajas del script Notebook Jupyter

| Ventaja | Descripción |
|--------|-------------|
| **Narrativa** | El notebook cuenta una historia: “de los datos a la decisión”. |
| **Reproducibilidad** | Cualquier persona puede ejecutarlo paso a paso. |
| **Exploración** | Ideal para validación, ajustes y presentaciones académicas. |
| **Documentación** | Todo el análisis está registrado y explicado. |

---

## ✅ Conclusión

El proyecto **“Tienda Aurelion”** demuestra cómo la **automatización del análisis de datos** puede transformar una empresa reactiva en una **organización orientada a datos**. Con herramientas accesibles como Python y GitHub Copilot, es posible generar insights estratégicos sin necesidad de infraestructura compleja.

Este flujo de trabajo es **escalable, reproducible y listo para integrar modelos de Machine Learning** en futuras fases, como predicción de ventas o recomendación personalizada de productos.

---

> ✅ **Nota final**: La documentación está acompañada por los archivos del proyecto en .docx, .pdf, .psc. El archivo `.ipynb` del proyecto también está incluido como evidencia técnica.

---

### Próximos pasos

Este análisis permitió consolidar múltiples fuentes de datos en un solo reporte integral. Se identificaron productos clave, vendedores destacados, diferencias entre sucursales y comportamiento de clientes frente a medios de pago.

Además, se logró:

- **Unificación de datos**: Integrar información de diversas tablas para obtener una vista completa del negocio.
- **Análisis detallado**: Identificar patrones de ventas, ingresos por categoría y sucursal, y métodos de pago preferidos.
- **Visualización efectiva**: Utilizar gráficos claros para comunicar hallazgos clave.

Estos resultados son fundamentales para tomar decisiones estratégicas basadas en datos y optimizar procesos internos. El siguiente paso será profundizar en el análisis predictivo y explorar nuevas oportunidades de crecimiento.

## Reflexiones y Próximos Pasos

El análisis realizado en este notebook nos brinda una perspectiva integral sobre las ventas y el comportamiento de los clientes. Sin embargo, siempre hay espacio para mejorar:

- **Profundizar en el análisis predictivo**: Utilizar modelos de machine learning para anticipar tendencias de ventas y comportamiento de clientes.
- **Segmentación avanzada**: Identificar grupos de clientes con características similares para personalizar estrategias de marketing.
- **Optimización de inventarios**: Analizar patrones de ventas para mejorar la gestión de stock y reducir costos.
- **Visualizaciones interactivas**: Implementar dashboards dinámicos que permitan explorar los datos de manera más intuitiva.

Estos pasos no solo fortalecerán la toma de decisiones, sino que también abrirán nuevas oportunidades para el crecimiento del negocio.

# SPRING 2
# Desarrollo de aplicación de técnicas estadisticas:
  1. Base de datos limpia y lista
  2. Calcular estadísticas básicas calculadas
  3. Identificar tipo de distribución de variables
  4. Análisis de correlaciones entre variables principales
  5. Detección deoutliers mediante curatiles y rangos
  6. Interpretar resultados para el problema de negocio
  7. Documentar


## 1: Caracterización inicial del DataFrame `df_master`

En esta fase, realizaremos una caracterización inicial del DataFrame `df_master` para comprender su estructura y contenido. Utilizaremos métodos de pandas para obtener estadísticas descriptivas y visualizaciones para entender la distribución de las variables numéricas.

### Visualización de las primeras filas del DataFrame

### Información general del DataFrame


### Resumen estadístico de las variables numéricas

### Visualización de la distribución de variables numéricas

A continuación, generaremos histogramas para visualizar la distribución de algunas variables numéricas clave en `df_master`.

### Interpretación de la Distribución de Variables Numéricas (Histogramas)

Los histogramas generados nos proporcionan una visión gráfica de cómo se distribuyen los valores en las variables numéricas clave de nuestro DataFrame `df_master`:

*   **`cantidad`**: La distribución de la cantidad de productos vendidos en cada detalle de venta muestra una concentración en valores bajos, con la mayoría de las ventas incluyendo entre 1 y 3 unidades. Esto sugiere que los clientes tienden a comprar pocos artículos por transacción.

*   **`precio_unitario_x`**: El histograma del precio unitario de los productos vendidos parece tener una distribución relativamente uniforme, aunque con algunas barras más altas en ciertos rangos de precios. Esto indica una variedad de precios en los productos, sin una fuerte concentración en un único punto de precio.

*   **`importe`**: La distribución del importe por detalle de venta (cantidad * precio unitario) muestra una clara asimetría positiva, con la mayoría de los importes concentrados en valores bajos y una cola larga hacia la derecha, indicando la existencia de detalles de venta con importes significativamente más altos.

*   **`descuento_aplicado_pct`**: El histograma del porcentaje de descuento aplicado revela que en la gran mayoría de los detalles de venta no se aplicó ningún descuento (barra en 0). Existen algunas barras pequeñas en otros valores (como 5, 10, 15), lo que sugiere que los descuentos se aplican de forma selectiva y no de manera generalizada.

*   **`subtotal`**: Similar al `importe`, la distribución del subtotal por detalle de venta (importe sin tener en cuenta el descuento_pct en el cálculo original) también presenta una asimetría positiva, con la mayoría de los subtotales en rangos bajos y algunos valores más altos.

*   **`monto_final`**: La distribución del monto final por detalle de venta (subtotal con el descuento aplicado) es muy similar a la del `importe` y `subtotal`, lo cual es esperable dado que la mayoría de las transacciones no tuvieron descuento. Muestra la misma asimetría positiva con la mayoría de los montos concentrados en valores más bajos.

En general, las variables relacionadas con el valor monetario de las transacciones (`importe`, `subtotal`, `monto_final`) muestran distribuciones sesgadas hacia la derecha, lo que es común en datos de ventas donde la mayoría de las transacciones son de bajo valor, pero existen algunas transacciones de alto valor que tiran la media hacia arriba. La variable `cantidad` indica que las compras suelen ser de pocos artículos, y `descuento_aplicado_pct` confirma que los descuentos no son una práctica generalizada.

## 2: Calcular estadísticas básicas calculadas

### Interpretación de las Estadísticas Descriptivas de Variables Numéricas

Las estadísticas descriptivas para las variables numéricas clave en `df_master` nos proporcionan un resumen cuantitativo de su distribución y características centrales:

*   **`cantidad`**:
    *   **count (2016)**: Hay 2016 registros de cantidad de productos por detalle de venta.
    *   **mean (2.68)**: En promedio, se venden aproximadamente 2.68 unidades por detalle de venta.
    *   **std (1.26)**: La desviación estándar es de 1.26, lo que indica una dispersión moderada alrededor de la media.
    *   **min (1.00)**: La cantidad mínima vendida en un detalle de venta es 1 unidad.
    *   **25% (2.00)**: El 25% de los detalles de venta tienen 2 unidades o menos.
    *   **50% (3.00)**: La mediana es 3 unidades, lo que significa que la mitad de los detalles de venta tienen 3 unidades o menos.
    *   **75% (4.00)**: El 75% de los detalles de venta tienen 4 unidades o menos.
    *   **max (5.00)**: La cantidad máxima vendida en un detalle de venta es 5 unidades.
    *   **Hallazgo**: La mayoría de las transacciones involucran una cantidad pequeña de productos (entre 1 y 4), lo que se alinea con la observación de los histogramas.

*   **`precio_unitario_x`**:
    *   **count (2016)**: Hay 2016 registros de precio unitario por detalle de venta.
    *   **mean (31.45)**: El precio unitario promedio de los productos es de aproximadamente $31.45.
    *   **std (12.83)**: La desviación estándar de 12.83 sugiere una variabilidad considerable en los precios unitarios.
    *   **min (2.72)**: El precio unitario mínimo es de $2.72.
    *   **max (49.82)**: El precio unitario máximo es de $49.82.
    *   **Hallazgo**: Existe una amplia gama de precios unitarios en los productos, como se observó en el histograma.

*   **`importe`**:
    *   **count (2016)**: Hay 2016 registros de importe por detalle de venta.
    *   **mean (83.86)**: El importe promedio por detalle de venta es de aproximadamente $83.86.
    *   **std (54.42)**: La desviación estándar de 54.42 es relativamente alta en comparación con la media, lo que indica una dispersión significativa de los importes.
    *   **min (2.72)**: El importe mínimo es de $2.72.
    *   **max (249.10)**: El importe máximo es de $249.10.
    *   **Hallazgo**: La media es notablemente mayor que la mediana (76.40), lo que confirma la asimetría positiva observada en el histograma, con algunos detalles de venta de alto importe.

*   **`descuento_aplicado_pct`**:
    *   **count (2016)**: Hay 2016 registros de porcentaje de descuento aplicado.
    *   **mean (1.17)**: El porcentaje de descuento promedio aplicado es muy bajo, alrededor del 1.17%.
    *   **std (3.10)**: La desviación estándar es de 3.10, lo que indica que la mayoría de los descuentos son 0, pero existen algunos valores más altos que generan dispersión.
    *   **min (0.00)**: El descuento mínimo aplicado es 0%.
    *   **25% (0.00)**, **50% (0.00)**, **75% (0.00)**: Los cuartiles indican que el 75% de los detalles de venta no tienen descuento.
    *   **max (15.00)**: El descuento máximo aplicado es del 15%.
    *   **Hallazgo**: Los descuentos no son una práctica común en la mayoría de las transacciones.

*   **`subtotal`**:
    *   **count (2016)**: Hay 2016 registros de subtotal por detalle de venta.
    *   **mean (82.92)**: El subtotal promedio por detalle de venta es de aproximadamente $82.92.
    *   **std (54.02)**: La desviación estándar es de 54.02, similar a la del `importe`, lo que indica una dispersión comparable.
    *   **min (2.72)**: El subtotal mínimo es de $2.72.
    *   **max (248.65)**: El subtotal máximo es de $248.65.
    *   **Hallazgo**: Al igual que el `importe`, la media (82.92) es mayor que la mediana (74.31), confirmando la asimetría positiva.

*   **`monto_bruto`**:
    *   **count (2016)**: Hay 2016 registros de monto bruto por venta.
    *   **mean (279.66)**: El monto bruto promedio por venta es de aproximadamente $279.66.
    *   **std (146.12)**: La desviación estándar de 146.12 es alta, lo que indica una gran variabilidad en el monto total de las ventas.
    *   **min (2.72)**: El monto bruto mínimo es de $2.72.
    *   **max (786.51)**: El monto bruto máximo es de $786.51.
    *   **Hallazgo**: Existe una amplia dispersión en el valor total de las ventas.

*   **`monto_neto`**:
    *   **count (2016)**: Hay 2016 registros de monto neto por venta.
    *   **mean (279.66)**: El monto neto promedio por venta es de aproximadamente $279.66.
    *   **std (146.12)**: La desviación estándar es de 146.12, idéntica a la del monto bruto, lo que sugiere que los descuentos aplicados a nivel de detalle de venta no impactan significativamente el monto total a nivel de venta en promedio.
    *   **min (2.72)**: El monto neto mínimo es de $2.72.
    *   **max (786.51)**: El monto neto máximo es de $786.51.
    *   **Hallazgo**: El monto neto es igual al monto bruto en este dataset, lo que indica que los descuentos aplicados a nivel de detalle de venta no se reflejan en las columnas `monto_bruto` y `monto_neto` de la tabla de ventas principal. Esto podría ser un punto a investigar o tener en cuenta para futuros análisis si se espera que los descuentos afecten el monto total de la venta.

*   **`monto_final`**:
    *   **count (2016)**: Hay 2016 registros de monto final por detalle de venta.
    *   **mean (82.06)**: El monto final promedio por detalle de venta es de aproximadamente $82.06.
    *   **std (53.80)**: La desviación estándar es de 53.80, similar a la del `importe` y `subtotal`.
    *   **min (2.72)**: El monto final mínimo es de $2.72.
    *   **max (248.65)**: El monto final máximo es de $248.65.
    *   **Hallazgo**: El monto final, que considera el descuento a nivel de detalle, es ligeramente menor que el `importe` y `subtotal` promedio, lo cual es lógico, aunque la diferencia es pequeña debido al bajo porcentaje promedio de descuento aplicado.

## 3: Identificación del tipo de distribución de variables numéricas

En esta fase, calcularemos el tipo de distribución de las variables numéricas clave en `df_master` para identificar y comprender la forma de sus distribuciones.

## Visualización de las Distribuciones

Utilizaremos box plots y violin plots. Estas visualizaciones nos ayudarán a entender mejor la dispersión, la presencia de outliers y la forma general de las distribuciones.

### Box plots (Diagramas de Caja)

Los box plots son útiles para visualizar la mediana, los cuartiles y la presencia de valores atípicos.

### Interpretación de los Box plots

* **`cantidad`**: El box plot muestra que la mayoría de los valores están entre 2 y 4, con la mediana en 3. No parece haber outliers evidentes en esta variable.
* **`precio_unitario_x`**: La caja central abarca un rango amplio de precios, lo que concuerda con la desviación estándar observada. No se aprecian outliers significativos.
* **`importe`**, **`subtotal`**, **`monto_final`**: Estos box plots son similares y muestran una concentración de datos en la parte baja de la distribución, con una cola superior más larga y la presencia de algunos puntos que podrían ser considerados outliers (los puntos individuales por encima del bigote superior). Esto confirma el sesgo positivo identificado con la asimetría.
* **`descuento_aplicado_pct`**: Este box plot muestra claramente que la gran mayoría de los valores son 0. Los puntos individuales por encima de 0 representan los descuentos aplicados y son identificados como outliers por el método del box plot.

### Violin plots (Diagramas de Violín)

Los violin plots combinan un box plot con una estimación de la densidad de probabilidad, mostrando la forma de la distribución de manera más detallada.

### Interpretación de los Violin plots

Los violin plots confirman las observaciones de los histogramas y box plots:

* **`cantidad`**: La forma del violín es relativamente simétrica alrededor de la mediana, aunque con mayor densidad en los valores enteros (1, 2, 3, 4, 5).
* **`precio_unitario_x`**: El violín muestra una distribución más extendida, sin picos pronunciados, lo que sugiere una distribución más uniforme de los precios unitarios.
* **`importe`**, **`subtotal`**, **`monto_final`**: La forma de estos violines es más ancha en la parte inferior y se estrecha hacia arriba, lo que ilustra claramente el sesgo positivo y la concentración de datos en valores más bajos.
* **`descuento_aplicado_pct`**: El violin plot para el descuento es muy estrecho en la parte inferior (en 0) y se ensancha ligeramente en los valores de descuento, mostrando visualmente la baja frecuencia de descuentos aplicados.



### Interpretación General del Tipo de Distribución de Variables Numéricas (Basado en Box Plots y Violin Plots)

En conjunto, estas visualizaciones nos brindan una comprensión más completa de la forma, dispersión y presencia de posibles outliers en las distribuciones de las variables numéricas. La combinación de Box plots y Violin plots nos ha proporcionado una confirmación visual robusta de las características de las distribuciones de las variables numéricas:

* Las variables monetarias a nivel de detalle de venta (`importe`, `subtotal`, `monto_final`) y a nivel de venta (`monto_bruto`, `monto_neto`) presentan un **fuerte sesgo positivo**, lo que es una característica típica de los datos de ventas donde hay muchas transacciones pequeñas y algunas pocas grandes.
* El `descuento_aplicado_pct` es una variable con una distribución extremadamente **no normal y altamente sesgada**, donde el valor 0 domina por completo.
* `cantidad` y `precio_unitario_x` tienen distribuciones más **equilibradas**, aunque no necesariamente normales, sin la presencia de outliers significativos según el método IQR en `cantidad`.

Estas visualizaciones son fundamentales para complementar las estadísticas descriptivas numéricas, ya que nos dan una intuición directa sobre la forma de los datos, la concentración de valores y la ubicación de posibles outliers, lo cual es vital para la fase de preparación de datos y la selección de técnicas de análisis posteriores.

## 4: Análisis de correlaciones entre variables principales

En esta fase, exploraremos las relaciones lineales entre las variables numéricas clave calculando la matriz de correlación y visualizándola mediante un mapa de calor.

### Cálculo de la Matriz de Correlación

### Visualización de la Matriz de Correlación de Pearson (Mapa de Calor)

### Interpretación de la Matriz de Correlación y el Mapa de Calor

La matriz de correlación y el mapa de calor nos muestran la fuerza y dirección de la relación lineal entre pares de variables numéricas:

* **Valores cercanos a 1**: Indican una fuerte correlación positiva (cuando una variable aumenta, la otra también tiende a aumentar).
* **Valores cercanos a -1**: Indican una fuerte correlación negativa (cuando una variable aumenta, la otra tiende a disminuir).
* **Valores cercanos a 0**: Indican una correlación lineal débil o nula.

Observaciones clave de la matriz y el mapa de calor:

* **`importe`, `subtotal`, `monto_final`**: Como era de esperar, estas variables están muy fuertemente correlacionadas positivamente entre sí (valores cercanos a 1). Esto tiene sentido ya que representan valores monetarios muy relacionados dentro de un mismo detalle de venta. La ligera diferencia en la correlación entre `importe`/`subtotal` y `monto_final` se debe a la aplicación del descuento.
* **`cantidad` e `importe`/`subtotal`/`monto_final`**: Existe una correlación positiva moderada a fuerte entre la `cantidad` de productos en un detalle de venta y el `importe`, `subtotal` y `monto_final`. Esto es lógico, ya que a mayor cantidad de productos, mayor tiende a ser el importe total del detalle.
* **`precio_unitario_x` e `importe`/`subtotal`/`monto_final`**: También hay una correlación positiva moderada entre el `precio_unitario_x` y el `importe`, `subtotal` y `monto_final`. Esto indica que productos con mayor precio unitario tienden a contribuir a mayores importes en los detalles de venta donde se incluyen.
* **`cantidad` y `precio_unitario_x`**: La correlación entre `cantidad` y `precio_unitario_x` es cercana a 0 (-0.0175). Esto sugiere que no hay una relación lineal fuerte entre la cantidad de productos comprados en un detalle de venta y el precio unitario de esos productos.
* **`monto_bruto` y `monto_neto`**: Estas variables están perfectamente correlacionadas positivamente (valor de 1.00). Esto confirma que en este dataset, el monto bruto y el monto neto a nivel de venta son idénticos, lo cual ya habíamos notado y sugiere que los descuentos a nivel de detalle no se restan en estas columnas.
* **Correlaciones entre variables de detalle (`cantidad`, `precio_unitario_x`, `importe`, `subtotal`, `monto_final`) y variables de venta (`monto_bruto`, `monto_neto`)**: Las correlaciones entre estas dos series de variables son positivas pero más débiles en comparación con las correlaciones dentro de cada grupo. Esto es esperable, ya que `monto_bruto` y `monto_neto` representan el total de una venta (que puede incluir múltiples detalles de venta), mientras que las otras variables son a nivel de detalle.

Este análisis de correlación nos ayuda a entender las interdependencias entre las variables numéricas, lo cual es útil para modelado predictivo o para identificar relaciones importantes en los datos.

## Análisis de Correlación de Spearman

Calcularemos la matriz de correlación de Spearman, que es menos sensible a outliers y relaciones no lineales, para complementar el análisis de Pearson.

### Cálculo de la Matriz de Correlación de Spearman

### Visualización de la Matriz de Correlación de Spearman (Mapa de Calor)

### Interpretación de la Matriz de Correlación de Spearman

En general, los coeficientes de Spearman tenderán a ser similares a los de Pearson si las relaciones son predominantemente lineales y no hay outliers extremos. Sin embargo, pueden diferir notablemente si hay fuertes relaciones monótonas que no son lineales, o si los outliers influyen en la correlación de Pearson.
Este análisis complementario con Spearman nos da una visión más completa y robusta de las asociaciones entre las variables numéricas, especialmente útil dado el sesgo y los posibles outliers que hemos identificado en pasos anteriores.

### Interpretación de la Matriz de Correlación de Spearman

Al comparar la matriz de correlación de Spearman con la de Pearson, podemos observar si la presencia de outliers o la naturaleza no lineal de algunas relaciones afectó significativamente los coeficientes de correlación. En general, los coeficientes de Spearman tenderán a ser similares a los de Pearson si las relaciones son predominantemente lineales y no hay outliers extremos. Sin embargo, pueden diferir notablemente si hay fuertes relaciones monótonas que no son lineales, o si los outliers influyen en la correlación de Pearson.
Este análisis complementario nos da una visión más completa y robusta de las asociaciones entre las variables numéricas, especialmente útil dado el sesgo y los posibles outliers que hemos identificado en pasos anteriores.

**Comparación con Pearson y Consideraciones sobre Outliers/Sesgo:**

Al comparar los mapas de calor de Pearson y Spearman, podemos notar lo siguiente:

*   **Correlaciones fuertes (cercanas a 1 o -1):** Para las variables que ya mostraron una correlación de Pearson muy fuerte (por ejemplo, entre `importe`, `subtotal` y `monto_final`), los valores de Spearman son muy similares. Esto sugiere que estas relaciones son consistentemente fuertes y monótonas, y los outliers no afectan drásticamente su ordenamiento.
*   **Correlaciones moderadas:** Para correlaciones moderadas (como entre `cantidad` y las variables de monto, o entre `precio_unitario_x` y las variables de monto), los valores de Spearman también son bastante parecidos a los de Pearson, aunque puede haber ligeras variaciones. Esto indica que la relación monótona es similar a la relación lineal para la mayoría de los datos.
*   **Correlaciones débiles (cercanas a 0):** La correlación entre `cantidad` y `precio_unitario_x` sigue siendo muy cercana a 0 en Spearman (-0.0085), al igual que en Pearson (-0.0175). Esto refuerza la idea de que no hay una relación lineal o monótona significativa entre la cantidad de artículos comprados y su precio unitario en un detalle de venta.
*   **Impacto de Outliers/Sesgo:** Aunque las diferencias no son drásticas en este dataset particular para la mayoría de las variables (lo que podría sugerir que los outliers no son extremadamente influyentes en el ordenamiento de los rangos, o que las relaciones monótonas son bastante lineales), la correlación de Spearman es inherentemente más robusta ante la presencia de esos outliers y el sesgo que observamos en las distribuciones. Por lo tanto, los valores de Spearman pueden considerarse una representación más fiable de la asociación general entre las variables en presencia de datos no normales o con outliers.

En resumen, en este caso, los resultados de Pearson y Spearman son bastante consistentes, lo que es positivo. Sin embargo, si tuviéramos outliers más extremos o relaciones claramente no lineales, las diferencias serían más pronunciadas. La correlación de Spearman nos da confianza en que las asociaciones que observamos no están siendo indebidamente influenciadas por los valores extremos.

### 5: Detección de Outliers mediante Cuartiles y Rangos (Método IQR)

En esta fase, aplicaremos el método del rango intercuartílico (IQR) para identificar posibles outliers en algunas de las variables numéricas clave de `df_master`. Este método es menos sensible a los extremos que, por ejemplo, la detección basada en la desviación estándar.

### Cálculo de Cuartiles, IQR y Límites para Detección de Outliers

Calcularemos el primer cuartil (Q1), el tercer cuartil (Q3) y el rango intercuartílico (IQR) para la variable `monto_final`. Luego, definiremos los límites inferior y superior para identificar outliers.

### Identificación y Visualización de Outliers

Ahora, identificaremos las filas en `df_master` que contienen outliers según los límites calculados y mostraremos estos outliers. También podemos visualizar su posición en un box plot.

### Interpretación de la Detección de Outliers

La detección de outliers utilizando el método IQR para la variable `monto_final` nos ha mostrado lo siguiente:

*   Hemos identificado **{len(outliers)}** posibles outliers en la columna `{variable_outliers}`.
*   Estos outliers son valores que se encuentran por debajo del límite inferior ({lower_bound:.2f}) o por encima del límite superior ({upper_bound:.2f}).
*   El box plot confirma visualmente la presencia de estos puntos atípicos más allá de los "bigotes" del diagrama de caja.

La presencia de outliers es importante considerarla, ya que pueden influir en algunos análisis estadísticos o modelos. Dependiendo del objetivo del análisis, podríamos decidir investigar estos outliers para entender por qué ocurren, o aplicar técnicas para manejarlos (por ejemplo, eliminarlos, transformarlos o Winsorizarlos) si es necesario para análisis posteriores.

Dado que el número de outliers detectados es **{len(outliers)}**, que representa aproximadamente el **{len(outliers)/len(df_master)*100:.2f}%** del total de registros, es importante evaluar si estos outliers son errores de datos o representan transacciones inusualmente altas/bajas legítimas que podrían ser relevantes para el negocio.

## 6: Interpretación de Resultados para el Problema de Negocio

En esta fase, consolidaremos los hallazgos de las fases anteriores (estadísticas descriptivas, análisis de distribución, análisis de correlación y detección de outliers) y los interpretaremos en el contexto del negocio de Aurelion.

### Resumen de Hallazgos Clave:

1.  **Estadísticas Descriptivas:**
    *   La **cantidad** promedio de productos por detalle de venta es baja (~2.68 unidades), lo que sugiere que los clientes suelen comprar pocos artículos en cada transacción.
    *   El **precio unitario** de los productos varía considerablemente ($2.72 a $49.82), reflejando la diversidad del catálogo.
    *   El **importe**, **subtotal** y **monto final** por detalle de venta muestran un sesgo positivo, indicando que la mayoría de las transacciones son de bajo valor, pero existen algunas transacciones de alto valor que influyen en la media.
    *   El **descuento aplicado** es poco frecuente (promedio ~1.17%) y cuando se aplica, los porcentajes son limitados (máximo 15%).
    *   El **monto bruto** y **monto neto** a nivel de venta son idénticos en este dataset, lo que sugiere que los descuentos a nivel de detalle no se reflejan en estas columnas de resumen de venta. Esto podría ser un punto a validar con la fuente de datos.

2.  **Distribución de Variables:**
    *   Las distribuciones de `importe`, `subtotal`, `monto_final`, `monto_bruto` y `monto_neto` están sesgadas positivamente (cola larga a la derecha), lo cual es típico en datos de ventas y refleja que la mayoría de las transacciones son pequeñas.
    *   La distribución de `descuento_aplicado_pct` tiene un pico muy alto en 0 y una cola derecha pronunciada, confirmando que los descuentos son raros pero pueden tener valores específicos cuando se aplican.
    *   Variables como `cantidad` y `precio_unitario_x` tienen distribuciones más simétricas o ligeramente sesgadas.
    *   Los box plots y violin plots visualizaron claramente este sesgo y la concentración de datos, así como la presencia de valores que el método IQR identifica como potenciales outliers.

3.  **Análisis de Correlación (Pearson y Spearman):**
    *   Existe una fuerte correlación positiva entre las variables de valor monetario a nivel de detalle de venta (`importe`, `subtotal`, `monto_final`), lo cual es esperado.
    *   Se observa una correlación positiva moderada a fuerte entre la `cantidad` y el `importe`/`subtotal`/`monto_final`, lo que indica que comprar más artículos generalmente resulta en un mayor importe por detalle.
    *   También hay una correlación positiva moderada entre el `precio_unitario_x` y el `importe`/`subtotal`/`monto_final`, sugiriendo que los productos más caros contribuyen a detalles de venta de mayor valor.
    *   La correlación entre `cantidad` y `precio_unitario_x` es muy débil, lo que significa que la cantidad de artículos comprados no está fuertemente relacionada linealmente con su precio unitario en un mismo detalle de venta.
    *   Los resultados de la correlación de Spearman fueron muy similares a los de Pearson, lo que sugiere que, aunque hay sesgo y outliers, las relaciones monótonas son consistentes con las relaciones lineales para la mayoría de los datos, o que los outliers no están distorsionando excesivamente el orden de los rangos.

4.  **Detección de Outliers (Método IQR):**
    *   Se identificaron **{len(outliers)}** posibles outliers en la variable `monto_final`. Estos representan transacciones con montos finales significativamente más altos que la mayoría.
    *   La presencia de estos outliers puede ser relevante para análisis posteriores (por ejemplo, si buscamos transacciones de alto valor) o podría requerir un manejo específico dependiendo de los modelos que se vayan a aplicar.

### Interpretación en el Contexto del Negocio:

*   El hecho de que la mayoría de las transacciones sean de bajo valor y con pocas unidades sugiere la importancia de estrategias para aumentar el ticket promedio (por ejemplo, promociones por volumen, recomendaciones de productos complementarios).
*   La baja frecuencia de descuentos aplicados indica que no es una estrategia de ventas generalizada. Podría explorarse si la aplicación estratégica de descuentos en ciertos productos o a ciertos clientes podría aumentar las ventas o la lealtad.
*   Las fuertes correlaciones entre cantidad, precio unitario y el valor del detalle de venta son lógicas, pero es importante entender qué productos o categorías contribuyen más a los detalles de venta de alto valor. (Esto ya lo vimos un poco en el análisis de ingresos por categoría).
*   Los outliers en `monto_final` podrían representar transacciones importantes (por ejemplo, compras de grandes volúmenes, productos de alto valor). Investigar estas transacciones podría revelar información sobre clientes clave o tipos de productos que generan mayores ingresos por transacción.
*   La discrepancia entre `monto_bruto`/`monto_neto` y el cálculo del descuento a nivel de detalle (`monto_final`) es un punto a aclarar para asegurar que entendemos cómo se registran y calculan los valores de venta totales.

Este análisis estadístico básico nos ha proporcionado una base sólida para comprender las características de nuestros datos de ventas y sienta las bases para análisis más avanzados o la toma de decisiones comerciales informadas.



### (El siguiente y último paso según el plan original es **Documentar** estos hallazgos).