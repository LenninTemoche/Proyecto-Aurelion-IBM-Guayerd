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

A continuación se presenta la estructura de las tablas fuente y las columnas clave que se integran y utilizan en el `df_master`:

#### 1. Tabla de Dimensión: `clientes_expanded`

| Columna               | Tipo de Dato | Descripción                          |
|-----------------------|--------------|--------------------------------------|
| `id_cliente`          | int64        | Identificador único (Clave Primaria) |
| `nombre_cliente`      | object       | Nombre y apellido del cliente        |
| `email`               | object       | Dirección de correo electrónico      |
| `ciudad`              | object       | Ciudad de residencia                 |
| `fecha_alta`          | datetime64   | Fecha de registro del cliente        |
| `genero`              | object       | Género del cliente                   |
| `edad_rango`          | object       | Rango de edad del cliente            |
| `activo_como_cliente` | bool         | Estado de actividad del cliente      |


#### 2. Tabla de Dimensión: `productos_expanded`

| Columna           | Tipo de Dato | Descripción                          |
|-------------------|--------------|--------------------------------------|
| `id_producto`     | int64        | Identificador único (Clave Primaria) |
| `nombre_producto` | object       | Nombre comercial del producto        |
| `categoria`       | object       | Categoría a la que pertenece         |
| `precio_unitario` | float64      | Precio unitario de venta             |
| `subcategoria`    | object       | Subcategoría del producto            |

#### 3. Tabla de Dimensión: `sucursales_expanded`

| Columna         | Tipo de Dato | Descripción                          |
|-----------------|--------------|--------------------------------------|
| `id_sucursal`   | int64        | Identificador único (Clave Primaria) |
| `nombre_sucursal`| object       | Nombre de la sucursal                |
| `ciudad`        | object       | Ciudad donde se encuentra            |
| `provincia`     | object       | Provincia donde se encuentra         |

#### 4. Tabla de Dimensión: `medios_pago_expanded`

| Columna             | Tipo de Dato | Descripción                          |
|---------------------|--------------|--------------------------------------|
| `id_medio_pago`     | int64        | Identificador único (Clave Primaria) |
| `nombre_medio_pago` | object       | Nombre del método de pago            |

#### 5. Tabla de Dimensión: `vendedores_expanded`

| Columna          | Tipo de Dato | Descripción                          |
|------------------|--------------|--------------------------------------|
| `id_vendedor`    | int64        | Identificador único (Clave Primaria) |
| `nombre_vendedor`| object       | Nombre del vendedor                  |
| `id_sucursal`    | int64        | Clave foránea a `SUCURSALES`         |
| `fecha_ingreso`  | datetime64   | Fecha de ingreso del vendedor        |
| `activo`         | bool         | Estado de actividad del vendedor     |

#### 6. Tabla de Hechos: `ventas_expanded`

| Columna             | Tipo de Dato | Descripción                          |
|---------------------|--------------|--------------------------------------|
| `id_venta`          | int64        | Identificador único (Clave Primaria) |
| `fecha`             | datetime64   | Fecha y hora de la venta             |
| `id_cliente`        | int64        | Clave foránea a `CLIENTES`           |
| `id_sucursal`       | int64        | Clave foránea a `SUCURSALES`         |
| `id_vendedor`       | int64        | Clave foránea a `VENDEDORES`         |
| `id_medio_pago`     | int64        | Clave foránea a `MEDIOS_PAGO`        |
| `nombre_cliente`    | object       | Nombre del cliente (redundante)      |
| `email`             | object       | Email del cliente (redundante)       |
| `medio_pago_original`| object      | Método de pago (texto original)      |
| `estado_venta`      | object       | Estado de la venta                   |
| `monto_bruto`       | float64      | Monto total de la venta antes desc.  |
| `monto_neto`        | float64      | Monto total de la venta después desc. |


#### 7. Tabla de Hechos: `detalle_ventas_expanded`

| Columna                | Tipo de Dato | Descripción                          |
|------------------------|--------------|--------------------------------------|
| `id_venta`             | int64        | Clave foránea a `VENTAS`             |
| `id_producto`          | int64        | Clave foránea a `PRODUCTOS`          |
| `nombre_producto`      | object       | Nombre producto (redundante)         |
| `cantidad`             | int64        | Número de unidades vendidas          |
| `precio_unitario`      | float64      | Precio unitario al momento de venta  |
| `importe`              | float64      | Cálculo: `cantidad * precio_unitario` |
| `descuento_aplicado_pct`| int64        | % de descuento aplicado (0-100)      |
| `subtotal`             | float64      | Importe con descuento aplicado       |


> **Nota**: Después de la unificación, el DataFrame `df_master` contendrá columnas de todas estas tablas, renombradas donde sea necesario (ej. `nombre_producto_x`, `precio_unitario_x` del detalle, `nombre_producto_y`, `precio_unitario_y` del producto, `ciudad_x` del cliente, `ciudad_y` de la sucursal, `id_sucursal_x` de ventas, `id_sucursal_y` de vendedores). También se agregan columnas de ingeniería de características como `año`, `mes`, `dia_nombre`, `descuento_pct` (descuento_aplicado_pct / 100), y `monto_final` (subtotal con descuento).

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

1. **Cargar y Consolidar Datos**: Uso de `pandas.read_excel()` para cargar los archivos. Limpieza y unión de tablas mediante `merge()`.
2. **Limpieza y Conversión**: Asegurar tipos de datos correctos, especialmente para fechas. Verificar y manejar (aunque en este dataset no hubo) valores nulos.
3. **Ingeniería de Características**: Crear columnas derivadas (`año`, `mes`, `dia_nombre`, `descuento_pct`, `monto_final`).
4. **Análisis Estadístico Básico y Avanzado**: Calcular estadísticas descriptivas, identificar distribuciones, analizar correlaciones (Pearson y Spearman), detectar outliers (IQR, Z-score) y calcular intervalos de confianza.
5. **Análisis de Negocio Específico**: Realizar análisis RFM de clientes, análisis de ingresos por producto y análisis temporal de ventas.
6. **Visualización de Resultados**: Generar gráficos relevantes (histogramas, box plots, violin plots, heatmaps, scatter plots, bar plots, series de tiempo).
7. **Interpretación y Documentación**: Consolidar hallazgos, interpretarlos en el contexto del negocio y documentar el proceso y los resultados.


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

<h3>Diagrama de Flujo (Resumen Visual)</h3>
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


## Resumen del Análisis Estadístico (SPRING 2)

Esta sección presenta un resumen de los hallazgos clave obtenidos al aplicar diversas técnicas estadísticas a los datos consolidados en `df_master` durante el Spring 2. El objetivo fue caracterizar las variables numéricas, identificar distribuciones, analizar relaciones y detectar valores atípicos para una mejor comprensión del negocio.

### Estadísticas Descriptivas Clave

Las estadísticas descriptivas nos proporcionaron una visión general de las variables numéricas:

| Estadístico          | cantidad | precio_unitario_x | importe | subtotal | monto_bruto | monto_neto | monto_final |
|----------------------|----------|-------------------|---------|----------|-------------|------------|-------------|
| **Count**            | 2016     | 2016.00           | 2016.00 | 2016.00  | 2016.00     | 2016.00    | 2016.00     |
| **Mean**             | 2.68     | 31.45             | 83.86   | 82.92    | 279.66      | 279.66     | 82.06       |
| **Std**              | 1.26     | 12.83             | 54.42   | 54.02    | 146.12      | 146.12     | 53.80       |
| **Min**              | 1.00     | 2.72              | 2.72    | 2.72     | 2.72        | 2.72       | 2.72        |
| **25%**              | 2.00     | 20.69             | 40.40   | 39.62    | 170.80      | 170.80     | 39.06       |
| **50% (Median)**     | 3.00     | 32.04             | 76.40   | 74.31    | 261.70      | 261.70     | 73.08       |
| **75%**              | 4.00     | 42.86             | 121.44  | 120.56   | 375.72      | 375.72     | 119.04      |
| **Max**              | 5.00     | 49.82             | 249.10  | 248.65   | 786.51      | 786.51     | 248.65      |
| **Skewness**         | 0.13     | -0.33             | 0.73    | 0.74     | 0.64        | 0.64       | 0.76        |
| **Kurtosis**         | -1.14    | -0.92             | -0.24   | -0.21    | 0.13        | 0.13       | -0.18       |
| **CV (%)**           | 46.95%   | 40.78%            | 64.90%  | 65.15%   | 52.25%      | 52.25%     | 65.56%      |

* **Interpretación:** Las variables monetarias (`importe`, `subtotal`, `monto_final`, `monto_bruto`, `monto_neto`) muestran un sesgo positivo significativo (valores > 0.5 en Skewness) y alta variabilidad (CV > 50%), indicando que la mayoría de las transacciones son de bajo valor, pero existen algunas de alto valor. `cantidad` y `precio_unitario_x` son más simétricas y con menor variabilidad. Se observó que `monto_bruto` y `monto_neto` son idénticos en este dataset.

### Detección de Outliers

La detección de outliers mediante **IQR** y **Z-score** reveló la presencia de valores atípicos, especialmente en las variables monetarias y en la variable de descuento:

| Variable                 | Método IQR (Conteo) | Método Z-score (`z > 3`) (Conteo) | % Outliers (IQR) |
|--------------------------|---------------------|--------------------------------------|------------------|
| `cantidad`               | 0                   | 0                                    | 0.00%            |
| `precio_unitario_x`      | 0                   | 0                                    | 0.00%            |
| `importe`                | 8                   | 6                                    | 0.40%            |
| `subtotal`               | 8                   | 4                                    | 0.40%            |
| `monto_bruto`            | 10                  | 10                                   | 0.50%            |
| `monto_neto`             | 10                  | 10                                   | 0.50%            |
| `monto_final`            | 8                   | 6                                    | 0.40%            |
| `descuento_aplicado_pct` | 307                 | 40                                   | 15.23%           |


* **Interpretación:** La presencia de outliers en variables monetarias resalta transacciones de alto valor que merecen investigación. La alta cantidad de outliers en `descuento_aplicado_pct` por IQR confirma su baja frecuencia, mientras que Z-score identifica los casos de descuento más extremos.

### Análisis de Correlación

Se analizó la correlación entre variables numéricas clave utilizando los métodos de Pearson y Spearman:

| Variables Relacionadas           | Correlación Pearson | Correlación Spearman |
|-----------------------------------|---------------------|----------------------|
| `cantidad` vs `importe`           | 0.71                | 0.71                 |
| `precio_unitario_x` vs `importe`  | 0.63                | 0.64                 |
| `cantidad` vs `precio_unitario_x` | -0.02               | -0.01                |
| `importe` vs `monto_final`        | 0.99                | 0.99                 |
| `monto_bruto` vs `monto_neto`     | 1.00                | 1.00                 |

* **Interpretación:** Existe una fuerte correlación positiva entre las variables de monto a nivel de detalle y una correlación moderada a fuerte con la cantidad y precio unitario. La correlación débil entre cantidad y precio unitario sugiere que la cantidad comprada no depende fuertemente del precio unitario en un detalle de venta. Los resultados de Pearson y Spearman son consistentes.

### Intervalos de Confianza (95%) para Métricas Clave

Los intervalos de confianza proporcionan rangos estimados para las verdaderas medias poblacionales:

| Métrica                 | Media    | IC Inferior | IC Superior |
|-------------------------|----------|-------------|-------------|
| Importe por detalle     | $83.86   | $81.48      | $86.24      |
| Cantidad por detalle    | 2.68     | 2.62        | 2.73        |
| Precio unitario         | $31.45   | $30.89      | $32.01      |
| Monto final por detalle | $82.06   | $79.71      | $84.41      |
| Monto bruto por venta   | $279.66  | $273.28     | $286.04     |
| Monto neto por venta    | $279.66  | $273.28     | $286.04     |

* **Interpretación:** Estos rangos nos dan una estimación de la precisión de las medias calculadas, indicando que con un 95% de confianza, la verdadera media poblacional de cada métrica se encuentra dentro del intervalo.

## Análisis RFM de Clientes

La segmentación de clientes utilizando el análisis RFM (Recencia, Frecuencia, Valor Monetario) proporcionó insights sobre el comportamiento de compra:

| Segmento    | Clientes | % Clientes | Valor Monetario Total | % del Total Valor | Valor Monetario Promedio |
|-------------|----------|------------|-----------------------|-------------------|--------------------------|
| Champions   | 24       | 24.2%      | $91,078.86            | 55.05%            | $3,794.95                |
| Loyal       | 23       | 23.2%      | $34,074.97            | 20.60%            | $1,481.52                |
| Potential   | 21       | 21.2%      | $22,764.99            | 13.76%            | $1,084.05                |
| At Risk     | 15       | 15.2%      | $10,583.85            | 6.40%             | $705.59                  |
| Lost        | 16       | 16.2%      | $6,937.50             | 4.19%             | $433.59                  |

* **Interpretación:** Los segmentos Champions y Loyal, que representan menos del 50% de los clientes, generan más del 75% del valor monetario total. Esto resalta la importancia de enfocar estrategias en estos grupos de alto valor.

### Análisis de Ingresos por Producto

La identificación de los productos que generan mayores ingresos totales y promedio por transacción es clave para la gestión de inventario y marketing:

| Producto                     | Ingresos Totales | Ingreso Promedio por Transacción | IC 95% Inferior | IC 95% Superior |
|------------------------------|------------------|----------------------------------|-----------------|-----------------|
| Sprite 1.5L                  | $4,269.04        | $158.11                          | $136.68         | $179.55         |
| Empanadas Congeladas         | $3,057.92        | $152.90                          | $126.06         | $179.73         |
| Desodorante Ambiente Aerosol | $3,048.50        | $127.02                          | $100.21         | $153.83         |
| Pizza Congelada Muzzarella   | $2,914.48        | $126.72                          | $107.33         | $146.11         |
| Pepsi 1.5L                   | $2,735.15        | $136.76                          | $110.42         | $163.10         |

* **Interpretación:** Estos productos son los principales impulsores de ingresos y deberían ser prioritarios en la gestión de stock y en las estrategias de promoción.

### Análisis Temporal de Ventas

El análisis de la evolución de las ventas a lo largo del tiempo reveló patrones importantes:

* **Evolución de Ventas Semanales:** La serie temporal permite visualizar las fluctuaciones y la tendencia general de las ventas (desde enero 2023 a junio 2024). La media móvil ayuda a identificar la tendencia, y las bandas de confianza del 95% proporcionan un rango de predicción.
* **Distribución de Importes por Año y Mes:** Los box plots muestran la distribución de los importes de venta en cada mes. Visualmente, no se observan cambios drásticos en la mediana o dispersión entre meses.
* **Test de Kruskal-Wallis:** El test estadístico (p-value = 0.3878) sugiere que **no hay diferencias significativas** detectadas en la distribución de los importes de venta entre los diferentes meses en este dataset. Esto implicaría que, a nivel del valor de transacción individual, no hay una estacionalidad marcada en este período.

* **Interpretación:** Aunque existen fluctuaciones semanales, la tendencia general de las ventas y la distribución de los importes por transacción no muestran diferencias significativas entre meses en el período analizado. Esto podría indicar un patrón de ventas relativamente estable a lo largo del año, o que la estacionalidad afecta más al volumen de transacciones que a su valor unitario.

Este resumen proporciona una visión concisa de los principales resultados estadísticos obtenidos, sentando las bases para la interpretación en el contexto del negocio y futuros análisis.