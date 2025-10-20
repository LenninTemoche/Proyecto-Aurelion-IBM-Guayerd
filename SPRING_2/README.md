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
Datos proporcionados por la cátedra en formato Excel (.xlsx), distribuidos en siete archivos:

- `clientes.xlsx`  
- `productos.xlsx`  
- `ventas.xlsx`  
- `detalle_venta.xlsx`  
- `sucursales.xlsx`  
- `categorias.xlsx`  
- `metodos_pago.xlsx`

### ✅ Descripción  
El conjunto de datos representa un ecosistema de ventas minoristas, capturando las interacciones entre clientes, productos, sucursales y métodos de pago. Permite responder preguntas como:

- **¿Qué se vendió?** → Productos  
- **¿Quién compró?** → Clientes  
- **¿Cuándo?** → Fecha de la transacción  
- **¿Dónde?** → Sucursal de la venta  
- **¿Cómo?** → Medio de pago y cantidad adquirida

### ✅ Escala del Dataset  

| Tabla              | Registros |
|--------------------|-----------|
| Clientes           | 150       |
| Productos          | 120       |
| Ventas             | 200       |
| Detalle de Venta   | 500       |
| Sucursales         | 10        |
| Categorías         | 15        |
| Métodos de Pago    | 5         |

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
INICIO_PROGRAMA

// =================================================================
// PASO 1: CONFIGURACIÓN E IMPORTACIÓN DE LIBRERÍAS
// =================================================================
IMPORTAR librería para manipulación de datos (ej. Pandas)
IMPORTAR librería para visualización (ej. Matplotlib, Seaborn)

// =================================================================
// PASO 2: CARGA DE DATOS
// =================================================================
DEFINIR df_clientes = CARGAR_DATOS("ruta/a/clientes.xlsx")
DEFINIR df_productos = CARGAR_DATOS("ruta/a/productos.xlsx")
DEFINIR df_ventas = CARGAR_DATOS("ruta/a/ventas.xlsx")
DEFINIR df_detalle_venta = CARGAR_DATOS("ruta/a/detalle_venta.xlsx")
DEFINIR df_sucursales = CARGAR_DATOS("ruta/a/sucursales.xlsx")
DEFINIR df_categorias = CARGAR_DATOS("ruta/a/categorias.xlsx")
DEFINIR df_metodos_pago = CARGAR_DATOS("ruta/a/metodos_pago.xlsx")

// =================================================================
// PASO 3: EXPLORACIÓN Y LIMPIEZA DE DATOS (EDA)
// =================================================================
PARA CADA tabla EN [df_clientes, df_productos, df_ventas, df_detalle_venta, df_sucursales, df_categorias, df_metodos_pago]:
    MOSTRAR "Información de la tabla:" + nombre_de_la_tabla
    MOSTRAR PRIMERAS_FILAS(tabla)
    MOSTRAR INFO_GENERAL(tabla)

    SI HAY_NULOS(tabla):
        MOSTRAR "Se encontraron valores nulos en " + nombre_de_la_tabla
        RELLENAR_NULOS(tabla['columna_con_nulos'], con_valor='Desconocido')
    FIN SI

    SI HAY_DUPLICADOS(tabla):
        MOSTRAR "Se encontraron filas duplicadas en " + nombre_de_la_tabla
        ELIMINAR_DUPLICADOS(tabla)
    FIN SI
FIN PARA

// Limpieza específica
CONVERTIR_A_FECHA(df_clientes['FechaDeAlta'])
CONVERTIR_A_FECHA(df_ventas['Fecha'])

// Eliminar columnas redundantes
ELIMINAR_COLUMNAS(df_ventas, ['nom_cliente', 'email'])
ELIMINAR_COLUMNAS(df_detalle_venta, ['Nom_Prod'])

// =================================================================
// PASO 4: UNIÓN DE TABLAS (MERGE / JOIN)
// =================================================================
DEFINIR df_detalle_completo = UNIR(df_detalle_venta, df_productos, en='id_Prod')
DEFINIR df_ventas_detalle = UNIR(df_ventas, df_detalle_completo, en='id_Vta')
DEFINIR df_master = UNIR(df_ventas_detalle, df_clientes, en='id_cliente')

MOSTRAR "Vista previa de la tabla maestra unificada:"
MOSTRAR PRIMERAS_FILAS(df_master)

// =================================================================
// PASO 5: INGENIERÍA DE CARACTERÍSTICAS (FEATURE ENGINEERING)
// =================================================================
EXTRAER AÑO de df_master['Fecha'] → nueva columna 'AñoVenta'
EXTRAER MES de df_master['Fecha'] → nueva columna 'MesVenta'
EXTRAER DÍA_DE_SEMANA de df_master['Fecha'] → nueva columna 'DiaSemanaVenta'

// =================================================================
// PASO 6: ANÁLISIS DE DATOS (RESPONDER PREGUNTAS DE NEGOCIO)
// =================================================================

// Pregunta 1: Top 10 productos más vendidos (cantidad)
DEFINIR top_productos_cantidad = df_master.AGRUPAR_POR('Nom_Prod').SUMAR('Cantidad')
DEFINIR top_productos_cantidad_ordenado = ORDENAR(top_productos_cantidad, por='Cantidad', descendente=VERDADERO)
MOSTRAR "Top 10 productos más vendidos por cantidad:", top_productos_cantidad_ordenado.PRIMEROS(10)

// Pregunta 2: Top 10 productos con mayores ingresos
DEFINIR top_productos_ingresos = df_master.AGRUPAR_POR('Nom_Prod').SUMAR('Importe')
DEFINIR top_productos_ingresos_ordenado = ORDENAR(top_productos_ingresos, por='Importe', descendente=VERDADERO)
MOSTRAR "Top 10 productos con mayores ingresos:", top_productos_ingresos_ordenado.PRIMEROS(10)

// Pregunta 3: Ventas por categoría
DEFINIR ventas_por_categoria = df_master.AGRUPAR_POR('Categoría').SUMAR('Importe')
DEFINIR ventas_por_categoria_ordenado = ORDENAR(ventas_por_categoria, por='Importe', descendente=VERDADERO)
MOSTRAR "Ventas totales por categoría:", ventas_por_categoria_ordenado

// Pregunta 4: Top 10 clientes por valor de compra
DEFINIR top_clientes = df_master.AGRUPAR_POR(['id_cliente', 'Nombre']).SUMAR('Importe')
DEFINIR top_clientes_ordenado = ORDENAR(top_clientes, por='Importe', descendente=VERDADERO)
MOSTRAR "Top 10 clientes por valor de compra:", top_clientes_ordenado.PRIMEROS(10)

// Pregunta 5: Evolución de ventas por mes
DEFINIR ventas_por_mes = df_master.AGRUPAR_POR(['AñoVenta', 'MesVenta']).SUMAR('Importe')
MOSTRAR "Evolución de ventas por mes:", ventas_por_mes

// Pregunta 6: Top 5 ciudades por volumen de ventas
DEFINIR ventas_por_ciudad = df_master.AGRUPAR_POR('Ciudad').SUMAR('Importe')
DEFINIR ventas_por_ciudad_ordenado = ORDENAR(ventas_por_ciudad, por='Importe', descendente=VERDADERO)
MOSTRAR "Top 5 ciudades por volumen de ventas:", ventas_por_ciudad_ordenado.PRIMEROS(5)

// =================================================================
// PASO 7: VISUALIZACIÓN DE RESULTADOS
// =================================================================
CREAR_GRAFICO_DE_BARRAS(datos=ventas_por_categoria_ordenado, titulo="Ventas por Categoría")
CREAR_GRAFICO_DE_LINEAS(datos=ventas_por_mes, titulo="Evolución de Ventas Mensuales")
CREAR_GRAFICO_DE_BARRAS_HORIZONTALES(datos=top_clientes_ordenado.PRIMEROS(10), titulo="Top 10 Clientes")
CREAR_GRAFICO_DE_TARTA(datos=ventas_por_ciudad_ordenado.PRIMEROS(5), titulo="Distribución de Ventas por Ciudad")
MOSTRAR_GRAFICOS()

FIN_PROGRAMA
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
