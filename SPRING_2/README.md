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

Fase de predicción
