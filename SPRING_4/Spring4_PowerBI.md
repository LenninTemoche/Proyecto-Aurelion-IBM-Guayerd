# SPRING 4 - Dashboard Power BI – Performance Overview

## 1. Descripción General

Este documento describe el diseño, modelado y construcción del dashboard **Performance de la Tienda Aurelion** en Power BI.  
El dashboard está compuesto por tres pestañas principales: **Resumen**, **Análisis** y **Reporte**, e incorpora medidas DAX, parámetros de campos, marcadores y visualizaciones dinámicas.

---

## 2. Modelo de Datos

### 2.1 Tablas Principales

- **FacVentas**: tabla de hechos con información transaccional.
- **DimCalendario**: tabla de fechas.
- **DimCliente**: información de clientes.
- **DimProducto**: información de productos y categorías.
- **DimSucursal**: información geográfica y sucursales.
- **DimMedioPago**: información de medios de pago.
  **DimVendedor**: información de vendedores.

### 2.2 Relaciones

- `DimCalendario[Date]` → `FacVentas[fecha]` (1:\* activa)
- `DimCliente[id_cliente]` → `FacVentas[id_cliente]`
- `DimProducto[id_producto]` → `FacVentas[id_producto]`
- `DimSucursal[id_sucursal]` → `FacVentas[id_sucursal]`
- `DimMedioPago[id_medio_pago]` → `FacVentas[id_medio_pago]`
- `DimVendedor[id_vendedor]` → `FacVentas[id_vendedor]`

---

## 3. Medidas DAX Base

```DAX
Ingreso Total = SUM('FacVentas'[monto_final])

Ingreso Año Anterior =
CALCULATE(
    [Ingreso Total],
    SAMEPERIODLASTYEAR('DimCalendario'[Date])
)

Var. Ingreso % =
DIVIDE(
    [Ingreso Total] - [Ingreso Año Anterior],
    [Ingreso Año Anterior],
    0
)
```

### 3.1 Otras Medidas Clave

```DAX
Total Órdenes = DISTINCTCOUNT('FacVentas'[id_venta])

Total Unidades Vendidas = SUM('FacVentas'[cantidad])

Ticket Promedio =
AVERAGEX(
    FacVentas,
    FacVentas[monto_final]
)

Ticket Promedio AA =
CALCULATE(
    [Ticket Promedio],
    SAMEPERIODLASTYEAR('DimCalendario'[Date])
)

Var. Ticket Promedio % =
DIVIDE(
    [Ticket Promedio] - [Ticket Promedio AA],
    [Ticket Promedio AA],
    0
)
```

---

## 4. Pestaña 1 – Resumen

### 4.1 KPIs Principales

- **Ingreso Total**
- **Órdenes Únicas**
- **Ticket Promedio**
- **Unidades Vendidas**

Cada KPI incluye comparación interanual (YoY).

### 4.2 Gráfico de Tendencia de Ingresos

**Visual**: Gráfico combinado (Columnas + Línea)

- Eje X: `DimCalendario[Mes]`
- Columnas: `[Ingreso Total]`
- Línea: `[Ingreso Año Anterior]`
- Tooltip: `[Var. Ingreso %]`

### 4.3 Top 5 Clientes y Categorías

**Visual**: Gráfico de barras horizontales

```DAX
Rank Clientes =
RANKX(
    ALL(DimCliente[nombre_cliente_x]),
    [Ingreso Total],
    ,
    DESC,
    DENSE
)

Rank Categorías =
RANKX(
    ALL(DimProducto[categoria]),
    [Ingreso Total],
    ,
    DESC,
    DENSE
)
```

Filtro Top N aplicado directamente al visual.

---

## 5. Pestaña 2 – Análisis

### 5.1 Eje Dinámico (Sucursal / Categoría)

Parámetro de Campos:

- `DimSucursal[ciudad_y]`
- `DimProducto[categoria]`

### 5.2 Título Dinámico

```DAX
Titulo Eje Sucursal Categoria =
SWITCH(
    TRUE(),
    SELECTEDVALUE('Eje Dinámico'[Eje Dinámico Campos]) = NAMEOF(DimSucursal[ciudad_y]),
        "Ingreso por Sucursal y Trimestre",
    SELECTEDVALUE('Eje Dinámico'[Eje Dinámico Campos]) = NAMEOF(DimProducto[categoria]),
        "Ingreso por Categoría y Trimestre",
    "Ingreso por Categoría y Trimestre"
)
```

Aplicado mediante **Formato condicional (fx)** en el título del gráfico.

### 5.3 Top N Dinámico (Clientes / Productos)

Parámetro de Campos:

- `DimCliente[nombre_cliente_x]`
- `DimProducto[nombre_producto_x]`

```DAX
Diferencia Ingreso ($) =
[Ingreso Total] - [Ingreso Año Anterior]
```

#### Título Dinámico Matriz

```DAX
Titulo Top N =
SWITCH(
    TRUE(),
    SELECTEDVALUE('Eje Top Productos Cliente'[Eje Top Productos Cliente Campos]) = NAMEOF(DimCliente[nombre_cliente_x]),
        "Análisis de Ingresos por Clientes",
    SELECTEDVALUE('Eje Top Productos Cliente'[Eje Top Productos Cliente Campos]) = NAMEOF(DimProducto[nombre_producto_x]),
        "Análisis de Ingresos por Productos",
    "Anális Dinámico de Ingresos por Clientes y Productos"
)
```

---

## 6. Gráfico de Dispersión (Scatter Plot)

**Objetivo**: Comparar Ingresos Año Actual vs Año Anterior.

- Detalles: `Eje Tabla Dinámica (Campos)`
- Eje X: `[Ingreso Total]`
- Eje Y: `[Ingreso Año Anterior]`

### Título Dinámico Scatter

```DAX
Titulo Scatter =
SWITCH(
    TRUE(),
    SELECTEDVALUE('Eje Top Productos Cliente'[Eje Top Productos Cliente Campos]) = NAMEOF(DimCliente[nombre_cliente_x]),
        "Ingreso por Clientes",
    SELECTEDVALUE('Eje Top Productos Cliente'[Eje Top Productos Cliente Campos]) = NAMEOF(DimProducto[nombre_producto_x]),
        "Ingreso por Productos",
    "Gráfico de Dispersión de Clientes y Productos"
)
```

---

## 7. Pestaña 3 – Reporte

### 7.1 KPIs Dinámicos

```DAX
Clientes Activos = DISTINCTCOUNT(FacVentas[id_cliente])

Productos Activos = DISTINCTCOUNT(FacVentas[id_producto])

KPI Conteo Dinámico =
IF(
    SELECTEDVALUE('Eje Tabla Dinámica'[Eje Tabla Dinámica Fields]) = DimCliente[nombre_cliente_x],
    [Clientes Activos],
    [Productos Activos]
)
```

### 7.2 Marcadores

- **Resumen-BM**
- **Detalle-BM**

Configurados con:

- ✅ Objetos visuales
- ✅ Mostrar

---

## 8. Conclusión

Este dashboard permite un análisis ejecutivo y exploratorio del desempeño comercial, combinando KPIs, comparaciones interanuales, ranking dinámico y análisis geográfico, todo con una experiencia interactiva optimizada. Lo que permite a los usuarios obtener una visión clara y detallada de los datos, facilitando la toma de decisiones informadas.

---

**Autor**: Grupo 6

IBM Guayerd - Diciembre 2025
