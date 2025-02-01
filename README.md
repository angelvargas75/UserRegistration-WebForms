# UserRegistration-WebForms

## Descripción
UserRegistration-WebForms es una aplicación desarrollada en ASP.NET Web Forms diseñada para la gestión eficiente de usuarios. Sus principales funcionalidades incluyen registro, actualización, eliminación y búsqueda por nombre, permitiendo una administración sencilla y centralizada de la información.

La aplicación se integra con una base de datos SQL Server, donde almacena los datos de los usuarios de manera estructurada y segura. Para optimizar el acceso y manipulación de la información, emplea ADO.NET en combinación con procedimientos almacenados, mejorando el rendimiento y la seguridad.

## Características principales
- Búsqueda por filtro de nombre.
- Registro de nuevos usuarios.
- Tabla con la información de todos los usuarios registrados.
- Actualización de usuarios.
- Eliminación de usuarios.

## Tecnologías utilizadas
| **Backend**               | **Frontend** |
|---------------------------|-------------|
| .NET Framework 4.7       | HTML5       |
| ASP.NET Web Forms        | CSS3        |
| C#                       | JavaScript  |
| ADO.NET                  | Bootstrap   |
| SQL Server               |             |

## Estructura del proyecto
El proyecto está organizado en las siguientes carpetas y archivos clave:

```
/UserRegistration-WebForms
│── /Pages/              # Contiene las páginas relacionadas con la gestión de cuentas de usuario
│   ├── /Crud/           # Página que muestra el formulario de registro o actualización.
│   ├── /Index/          # Página principal que muestra la tabla de usuarios.
│── MasterPage.Master    # Proporciona una estructura de navbar uniforme a todas las páginas del proyecto.
│── Web.config           # Archivo de configuración de la aplicación.
```

## Configuración y despliegue

### 1. Requisitos previos
- **Visual Studio 2013** o superior.
- **SQL Server** o **SQL Server Express**.

### 2. Configuración de la base de datos
- Aunque la base de datos es remota, para fines de prueba puede descargar el archivo `script.sql`, que contiene la estructura y datos de la base de datos, y ejecutarlo en SQL Server.
- Asegurarse de que la **cadena de conexión** en el archivo `Web.config` apunte correctamente a esta base de datos.

### 3. Despliegue
1. Abre el proyecto en **Visual Studio**.
2. Restaura los paquetes **NuGet** necesarios.
3. Compila y ejecuta la aplicación.

## Seguridad
La aplicación implementa medidas de seguridad estándar, incluyendo:
- **Validación de datos** en los controles ASP para evitar redundancia.
- Uso de **procedimientos almacenados** para prevenir inyecciones SQL y otros ataques.
- Los **parámetros de la URL** van cifrados con un algoritmo para encriptar y desencriptar.

## Actualización de la Aplicación
Esta versión es una mejora significativa de la primera iteración de UserRegistration-WebForms. Se corrigieron errores de validación de fechas para garantizar una mejor integridad de los datos y evitar inconsistencias en el registro de usuarios.

Además, utilizando HTML5 y CSS3 se realizó una renovación completa del diseño, adoptando una interfaz más moderna, intuitiva y totalmente responsiva, optimizada para distintos dispositivos y tamaños de pantalla. También se mejoró la experiencia de usuario (UX) mediante una navegación más fluida y una presentación de datos más clara y organizada.

Otras optimizaciones incluyen mejoras en el rendimiento, optimización de consultas a la base de datos y refactorización del código para hacerlo más mantenible y escalable.

## Consideraciones adicionales
- Asegúrate de que el **servidor de base de datos** esté en funcionamiento y accesible antes de ejecutar la aplicación.
- Revisa las configuraciones de **seguridad y autenticación** en el archivo `Web.config` para adaptarlas a tus necesidades específicas.
- Si deseas implementar funcionalidades adicionales, considera seguir las **mejores prácticas de desarrollo en ASP.NET Web Forms**.
