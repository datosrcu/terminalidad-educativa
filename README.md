# Plan de Terminalidad de Educación Secundaria Orientada — Sexto Año Previas

Tablero de control y gestión de elegibilidad de estudiantes de 6° año (cohortes 2020–2025) que adeudan materias previas en la ciudad de Río Cuarto.

Desarrollado para la **Coordinación Local de Educación (CLE)** · **Gobierno de Río Cuarto**.

## 🚀 Funcionalidades

- **Autenticación con Google (Auth0)**: Acceso restringido con lista blanca de correos autorizados (`datos@riocuarto.gov.ar` y `cleriocuarto@gmail.com`).
- **KPIs y Métricas clave**: Total de elegibles, desglose por datos confirmados (IPEM) y estimados (IPET), promedio de previas y alta prioridad.
- **Gráficos interactivos**:
  - Alumnos elegibles por escuela.
  - Histograma de distribución de materias previas.
- **Listado y Filtros avanzados**:
  - Búsqueda por nombre y DNI.
  - Filtro por escuela, fuente (confirmado/estimado), nivel de prioridad y estado de inscripción.
  - Ordenamiento multicriterio por columnas.
- **Gestión de Contacto Institucional (B.U.D.I.E.)**:
  - Visualización de datos directivos, teléfonos y correos.
  - Generación de correos prellenados para notificar a directores sobre estudiantes elegibles.
  - Copiado automático de nómina completa.
- **Sincronización y Persistencia**:
  - Marcado de alumnos inscriptos con persistencia local (`localStorage`) y sincronización automática con Google Sheets.

## 🛠️ Ejecución Local

Para ejecutar el tablero en entorno local:

```bash
# Iniciar el servidor local
node server.js
```

Luego abrir [http://localhost:3000](http://localhost:3000) en el navegador.

## ⚙️ Configuración de Auth0

1. Crea una aplicación de tipo **Single Page Application (SPA)** en [Auth0 Dashboard](https://manage.auth0.com/).
2. Configura las siguientes URLs permitidas:
   - **Allowed Callback URLs**: `http://localhost:3000` (y la URL del hosting/producción).
   - **Allowed Logout URLs**: `http://localhost:3000`
   - **Allowed Web Origins**: `http://localhost:3000`
3. En la pantalla de inicio del tablero, abre **"⚙ Configuración de Auth0"**, ingresa tu **Domain** y **Client ID**, y guarda los cambios.
