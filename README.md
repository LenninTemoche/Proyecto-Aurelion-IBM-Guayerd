# Proyecto-Aurelion-IBM-Guayerd

---

### 📄 **Archivo: `Proyecto_Aurelion.md`**

```markdown
# 📄 Proyecto Aurelion — Análisis de Datos para la Optimización de Ventas  
*Información del Alumno / Docente*

---

## 📌 Información General

- **Nombre del proyecto**: Tienda Aurelion  
- **Alumno/a**: [Tu nombre completo]  
- **Curso**: [Curso o materia]  
- **Docente**: [Nombre del profesor/a]  
- **Fecha de entrega**: [Fecha]  

---

## 1.1 Tema, Problema y Solución

### 🎯 Tema  
**Inteligencia Artificial para la optimización estratégica de ventas a partir del análisis integrado de datos comerciales en la tienda Aurelion.**

### ⚠️ Problema  
La tienda Aurelion recopila datos valiosos sobre clientes, productos y ventas, pero carece de un sistema para analizarlos de forma integrada. Esto genera tres problemas centrales:

1. **Desconocimiento del Cliente**: No se identifican patrones de compra, impidiendo reconocer quiénes son los clientes más valiosos o qué productos prefieren.
2. **Estrategias de Venta Genéricas**: Las campañas de marketing y promociones se aplican a todos por igual, generando bajo retorno de inversión y oportunidades perdidas.
3. **Ineficiencia Operativa**: Responder preguntas básicas como *“¿Cuál fue nuestro producto más vendido el mes pasado?”* requiere esfuerzo manual y consume tiempo valioso.

En esencia, la empresa opera de forma **reactiva**, mirando el pasado sin una hoja de ruta clara para tomar decisiones proactivas que impulsen su crecimiento.

### 💡 Solución  
Desarrollar un **flujo de trabajo analítico automatizado en Python** que transforme los datos crudos en **conocimiento accionable**. Este flujo sigue 3 etapas clave:

1. **Consolidación de Datos**: Unificación de las tablas de `Clientes`, `Productos`, `Ventas` y `Detalle de Venta` en un único DataFrame maestro, creando una visión 360° del negocio.
2. **Análisis Descriptivo Automatizado**: Respuesta automática a preguntas de negocio clave:
   - Top 10 productos más vendidos (cantidad e ingresos).
   - Ranking de clientes más valiosos.
   - Ventas por categoría y por ciudad.
   - Evolución mensual de las ventas.
3. **Fundamento para IA**: Este análisis descriptivo sentará las bases para futuras aplicaciones de Machine Learning (ej. segmentación de clientes con K-Means).

**Herramientas utilizadas**:  
- **Python** con `pandas`, `matplotlib`, `seaborn`.  
- **GitHub Copilot** como asistente de codificación para acelerar la escritura de código repetitivo y sugerir operaciones complejas en Pandas.

---

## 1.2 Dataset de Referencia

### 🔍 Fuente  
Datos proporcionados por la cátedra, en 4 archivos Excel (.xlsx):
- `clientes.xlsx`
- `productos.xlsx`
- `ventas.xlsx`
- `detalle_venta.xlsx`

### 📊 Definición  
El dataset representa un ecosistema de ventas minorista que captura las interacciones entre clientes y productos, permitiendo analizar:
- **¿Qué?** → Productos vendidos  
- **¿Quién?** → Clientes  
- **¿Cuándo?** → Fecha de venta  
- **¿Cómo?** → Medio de pago y cantidad

### 📏 Escala  
Conjunto de datos de muestra, diseñado para desarrollo y prueba:

| Tabla | Registros |
|-------|-----------|
| Clientes | 100 |
| Productos | 100 |
| Ventas | 120 |
| Detalle de Venta | 343 |

### 🏗️ Estructura del Modelo  
Se utiliza un **Modelo Estrella simplificado**:
- **Tablas de Dimensión** (describen entidades):  
  - `Clientes`  
  - `Productos`  
- **Tablas de Hechos** (registran eventos):  
  - `Ventas`  
  - `Detalle de Venta`

---

### 📋 Estructura Detallada de las Tablas

#### 1. Tabla de Dimensión: `CLIENTES`

| Columna | Tipo de Dato | Descripción |
|--------|--------------|-------------|
| `id_Cli` | Entero (Integer) | Identificador único (Clave Primaria) |
| `Nombre` | Texto (String) | Nombre y apellido del cliente |
| `Mail` | Texto (String) | Dirección de correo electrónico |
| `Ciudad` | Texto (String) | Ciudad de residencia |
| `FechaDeAlta` | Fecha (Datetime) | Fecha de registro del cliente |

#### 2. Tabla de Dimensión: `PRODUCTOS`

| Columna | Tipo de Dato | Descripción |
|--------|--------------|-------------|
| `Id_Prod` | Entero (Integer) | Identificador único (Clave Primaria) |
| `Nombre` | Texto (String) | Nombre comercial del producto |
| `Categoría` | Texto (String) | Categoría a la que pertenece |
| `PrecioUnitario` | Decimal (Float) | Precio unitario de venta |

#### 3. Tabla de Hechos: `VENTAS`

| Columna | Tipo de Dato | Descripción |
|--------|--------------|-------------|
| `id_Vta` | Entero (Integer) | Identificador único (Clave Primaria) |
| `Fecha` | Fecha (Datetime) | Fecha y hora de la venta |
| `id_cliente` | Entero (Integer) | Clave foránea a `CLIENTES` |
| `nom_cliente` | Texto (String) | *Campo redundante* (evitar en análisis) |
| `email` | Texto (String) | *Campo redundante* (evitar en análisis) |
| `medio_pago` | Texto (String) | Método de pago (Tarjeta, Efectivo, etc.) |

#### 4. Tabla de Hechos: `DETALLE_DE_VENTA`

| Columna | Tipo de Dato | Descripción |
|--------|--------------|-------------|
| `id_Vta` | Entero (Integer) | Clave foránea a `VENTAS` |
| `id_Prod` | Entero (Integer) | Clave foránea a `PRODUCTOS` |
| `Nom_Prod` | Texto (String) | *Campo redundante* (evitar en análisis) |
| `Cantidad` | Entero (Integer) | Número de unidades vendidas |
| `Precio_Uni` | Decimal (Float) | Precio unitario al momento de la venta |
| `Importe` | Decimal (Float) | Cálculo: `Cantidad * Precio_Uni` |

> ✅ **Nota clave**: Los campos redundantes (`nom_cliente`, `email`, `Nom_Prod`) deben ignorarse en el análisis. Se usan solo los IDs para mantener la integridad referencial.

---

## 1.3 Información, Pasos, Pseudocódigo y Diagrama del Programa

### 🧠 Descripción del Funcionamiento  
El programa es un script en Python que automatiza el proceso de análisis de datos de la tienda Aurelion. Realiza:

1. **Carga** de los 4 archivos Excel.
2. **Limpieza** de datos (nulos, duplicados, tipos de datos).
3. **Unificación** en una tabla maestra (`df_master`).
4. **Ingeniería de características** (extracción de año, mes, día de semana).
5. **Análisis descriptivo** de 6 preguntas de negocio.
6. **Visualización** de resultados mediante gráficos.

Finalmente, presenta los resultados en consola y gráficos, sirviendo como base para decisiones estratégicas.

### 🛠️ Pasos del Desarrollo

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

### 📜 Pseudocódigo (Completo)

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

// =================================================================
// PASO 3: EXPLORACIÓN Y LIMPIEZA DE DATOS (EDA)
// =================================================================
PARA CADA tabla EN [df_clientes, df_productos, df_ventas, df_detalle_venta]:
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

### 🖼️ Diagrama de Flujo (Resumen Visual)

> *Nota: El diagrama completo fue generado en PSeInt y se adjunta como imagen en el documento original. Aquí se presenta su estructura lógica:*

```plaintext
INICIO
   ↓
IMPORTAR LIBRERÍAS (Pandas, Matplotlib)
   ↓
CARGAR 4 ARCHIVOS .XLSX → df_clientes, df_productos, df_ventas, df_detalle_venta
   ↓
LIMPIEZA DE DATOS (nulos, duplicados, tipos, columnas redundantes)
   ↓
UNIÓN DE TABLAS → df_master (Clientes + Ventas + Productos + Detalle)
   ↓
INGENIERÍA DE CARACTERÍSTICAS (AñoVenta, MesVenta, DiaSemanaVenta)
   ↓
EJECUTAR ANÁLISIS (6 preguntas de negocio)
   ↓
GENERAR 4 GRÁFICOS (barras, líneas, barras horizontales, pastel)
   ↓
MOSTRAR RESULTADOS EN CONSOLA Y GRÁFICOS
   ↓
FIN
```

---

## 1.4 Sugerencias y Mejoras Aplicadas con GitHub Copilot

### ✅ Sugerencias Aceptadas

| Sugerencia | Beneficio |
|----------|-----------|
| Autocompletado de operaciones `groupby().sum().sort_values()` | Aceleró la creación de análisis de agregación. |
| Generación de plantillas de gráficos con `sns.barplot()`, `plt.title()` | Permitió centrarse en personalización estética. |
| Sugerencias de manejo de fechas con `pd.to_datetime()` | Mejoró la precisión en el análisis temporal. |

### ❌ Sugerencias Descartadas

| Sugerencia | Razón de Rechazo |
|----------|------------------|
| Uso de `lambda` o `list comprehensions` complejas para filtrado | Reducía legibilidad; se prefirió `.loc[]` y métodos explícitos de Pandas. |
| Implementación de K-Means para segmentación de clientes | Fuera de alcance: el proyecto es de **análisis descriptivo**, no predictivo. |

> ✅ **Filosofía de uso de Copilot**:  
> *“No copiar, sino acelerar. No reemplazar el pensamiento, sino potenciarlo.”*

---

## 1.5 Programa en Python (Implementación en Jupyter Notebook)

### 📁 Archivo: `proyecto_aurelion.ipynb`

### 🧩 Funcionalidad  
El programa se implementa como un **Jupyter Notebook**, no como un script de consola. Esto permite:

- Documentar cada paso con **celdas Markdown** (explicaciones).
- Ejecutar **celdas de código individualmente** (Shift + Enter).
- Ver resultados **en línea** (tablas, gráficos, resúmenes).

### 💬 Interacción del Usuario

1. **Leer la documentación** en celdas Markdown.
2. **Ejecutar celdas de código en orden**.
3. **Observar resultados inmediatos**:
   - `df.head()`
   - `df.info()`
   - Gráficos integrados con `matplotlib`/`seaborn`.

### 🌟 Ventajas del Enfoque Jupyter

| Ventaja | Descripción |
|--------|-------------|
| **Narrativa** | El notebook cuenta una historia: “de los datos a la decisión”. |
| **Reproducibilidad** | Cualquier persona puede ejecutarlo paso a paso. |
| **Exploración** | Ideal para validación, ajustes y presentaciones académicas. |
| **Documentación** | Todo el análisis está registrado y explicado. |

---

## 📎 Anexos

### ✅ Pseudocódigo (Repetido para referencia completa)

```plaintext
INICIO_PROGRAMA

// PASO 1: IMPORTACIÓN DE LIBRERÍAS
IMPORTAR pandas
IMPORTAR matplotlib.pyplot
IMPORTAR seaborn

// PASO 2: CARGA DE DATOS
DEFINIR df_clientes = CARGAR_DATOS("clientes.xlsx")
DEFINIR df_productos = CARGAR_DATOS("productos.xlsx")
DEFINIR df_ventas = CARGAR_DATOS("ventas.xlsx")
DEFINIR df_detalle_venta = CARGAR_DATOS("detalle_venta.xlsx")

// PASO 3: LIMPIEZA
PARA cada tabla EN [df_clientes, df_productos, df_ventas, df_detalle_venta]:
    MOSTRAR información de la tabla
    SI hay nulos → rellenar con 'Desconocido'
    SI hay duplicados → eliminar
FIN PARA

CONVERTIR_A_FECHA(df_clientes['FechaDeAlta'])
CONVERTIR_A_FECHA(df_ventas['Fecha'])
ELIMINAR_COLUMNAS(df_ventas, ['nom_cliente', 'email'])
ELIMINAR_COLUMNAS(df_detalle_venta, ['Nom_Prod'])

// PASO 4: UNIÓN DE TABLAS
DEFINIR df_detalle_completo = UNIR(df_detalle_venta, df_productos, en='id_Prod')
DEFINIR df_ventas_detalle = UNIR(df_ventas, df_detalle_completo, en='id_Vta')
DEFINIR df_master = UNIR(df_ventas_detalle, df_clientes, en='id_cliente')

// PASO 5: INGENIERÍA DE CARACTERÍSTICAS
df_master['AñoVenta'] = df_master['Fecha'].dt.year
df_master['MesVenta'] = df_master['Fecha'].dt.month
df_master['DiaSemanaVenta'] = df_master['Fecha'].dt.day_name()

// PASO 6: ANÁLISIS (6 PREGUNTAS)
// (Ver pseudocódigo completo arriba)

// PASO 7: VISUALIZACIÓN
CREAR_GRAFICO_DE_BARRAS(ventas_por_categoria_ordenado, "Ventas por Categoría")
CREAR_GRAFICO_DE_LINEAS(ventas_por_mes, "Evolución de Ventas Mensuales")
CREAR_GRAFICO_DE_BARRAS_HORIZONTALES(top_clientes_ordenado.head(10), "Top 10 Clientes")
CREAR_GRAFICO_DE_TARTA(ventas_por_ciudad_ordenado.head(5), "Distribución por Ciudad")
MOSTRAR_GRAFICOS()

FIN_PROGRAMA
```

---

## ✅ Conclusión

El proyecto **“Tienda Aurelion”** demuestra cómo la **automatización del análisis de datos** puede transformar una empresa reactiva en una **organización orientada a datos**. Con herramientas accesibles como Python y GitHub Copilot, es posible generar insights estratégicos sin necesidad de infraestructura compleja.

Este flujo de trabajo es **escalable, reproducible y listo para integrar modelos de Machine Learning** en futuras fases, como predicción de ventas o recomendación personalizada de productos.

---

> 📌 **Nota final**: Este informe está diseñado para ser entregado como documento PDF o impreso. El archivo `.ipynb` del proyecto debe acompañarlo como evidencia técnica.
```

---

### ✅ ¿Cómo descargarlo?

1. **Selecciona todo el texto** desde `# 📄 Proyecto Aurelion...` hasta `> 📌 ...evidencia técnica.`.
2. Abre tu editor de texto favorito (VS Code, Notepad++, Bloc de Notas, etc.).
3. **Pega el contenido**.
4. Ve a **Archivo → Guardar como...**
5. Elige el nombre:  
   **`Proyecto_Aurelion.md`**
6. Asegúrate de que el tipo sea **“Todos los archivos”** (no “Documento de texto”).
7. ¡Listo! Tienes tu informe en formato Markdown listo para entregar.

---

.
