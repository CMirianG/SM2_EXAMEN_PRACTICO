# 📲 Examen Práctico - Unidad II
## Nombre: Mirian Cuadros Garcia
## 📝 Descripción del Proyecto

Este proyecto es una aplicación Flutter desarrollada bajo el patrón MVC, sin conexión a base de datos, que simula un sistema de control de asistencia para administradores.  
Se han implementado dos funcionalidades principales basadas en historias de usuario:

### ✅ Funcionalidades implementadas

1. **Exportación de Reportes de Asistencia**  
   Permite al administrador exportar los registros en formatos **CSV** o **Excel**, con opción de personalizar las columnas exportadas. Los datos coinciden con los registros simulados del sistema.

2. **Dashboard con Estadísticas de Asistencia**  
   Muestra estadísticas visuales por empleado, sede y período de tiempo, representadas en gráficos de barras utilizando `fl_chart`. Los datos se actualizan dinámicamente.

---

## 📌 Historias de Usuario Implementadas

@@ -23,4 +39,44 @@
**✅ Criterios de Aceptación:**
1. El dashboard debe mostrar estadísticas separadas por empleado, sede y fechas (día, semana, mes).
2. La información debe representarse en **gráficos de barras y líneas**.
3. Los datos deben actualizarse automáticamente en tiempo real o al recargar la vista.
3. Los datos deben actualizarse automáticamente en tiempo real o al recargar la vista.

---

## 🔐 Usuario y Contraseña (simulados)

- **Usuario:** `admin`  
- **Contraseña:** `123456`

---

## 📷 Capturas de Pantalla
![image](https://github.com/user-attachments/assets/1c0c4c9b-e0b7-4de4-8ba7-2ceb2d126c03)

![image](https://github.com/user-attachments/assets/61098d03-8526-4a1d-af72-5d52360bef40)

![image](https://github.com/user-attachments/assets/83c74f18-594b-4a69-ac57-079ec7bf6338)




### 🖼 Exportación de Reportes
![Exportación CSV](screenshots/exportar_csv.png)

### 📊 Dashboard con Gráficos
![Dashboard](screenshots/dashboard_estadisticas.png)

> *Reemplaza las imágenes por tus propias capturas y súbelas a la carpeta `screenshots/` de tu repositorio.*

---

## 🔗 Enlaces y Referencias

- [Flutter](https://flutter.dev/)
- [fl_chart](https://pub.dev/packages/fl_chart) – Para gráficos del dashboard
- [csv](https://pub.dev/packages/csv) – Para exportación en formato CSV
- [excel](https://pub.dev/packages/excel) – Para exportación en formato Excel
- [path_provider](https://pub.dev/packages/path_provider) – Para guardar archivos en el dispositivo
- [flutter_bootstrap5](https://pub.dev/packages/flutter_bootstrap5) – Inspiración en estilos Bootstrap

---

## 📁 Repositorio Público

🔗 [https://github.com/CMirianG/SM2_EXAMEN_PRACTICO.git](https://github.com/CMirianG/SM2_EXAMEN_PRACTICO.git)

---

> 📌 **Recuerda convertir este archivo a PDF** y subirlo al Aula Virtual como parte de la entrega del examen.
