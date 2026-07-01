# BarberiaSystem - Sistema de Gestión de Turnos y Barberías

¡Bienvenido a **BarberiaSystem**! Este es un sistema de backend robusto desarrollado en **.NET 10** diseñado para automatizar y optimizar la gestión de turnos, horarios y servicios en una barbería o salón de estilistas. 

El proyecto está construido siguiendo una **Arquitectura en Capas**, lo que garantiza la separación de responsabilidades, la escalabilidad del código y la facilidad para realizar pruebas unitarias o integraciones futuras.

---

## 🏗️ Arquitectura del Proyecto

El sistema está dividido en tres capas principales perfectamente comunicadas:

* **`Barberia.API` (Capa de Presentación):** Desarrollada con ASP.NET Core Web API. Expone los endpoints (REST) para que cualquier frontend (Web o Mobile) pueda consumir los servicios del sistema. Utiliza Swagger para la documentación de las rutas de forma dinámica.
* **`Barberia.Negocio` (Capa de Lógica de Negocio):** El "cerebro" de la aplicación. Contiene todas las reglas críticas del negocio, tales como la validación de cruces de horarios de los barberos, la disponibilidad de turnos en tiempo real y las restricciones de estados de las citas.
* **`Barberia.Datos` (Capa de Acceso a Datos):** Encargada de la persistencia de la información. Implementa **Entity Framework Core** como ORM para comunicarse de forma eficiente con la base de datos SQL Server. Contiene las entidades esenciales del dominio.

---

## 🗂️ Modelo de Dominio (Entidades)

El sistema modela la lógica del negocio a través de las siguientes entidades relacionales:

1.  **Profesionales (Barberos):** Gestión del staff de la barbería y control de estados activos/inactivos.
2.  **Clientes:** Registro de usuarios, historial y datos de contacto.
3.  **Servicios:** Catálogo de prestaciones con precios exactos (`DECIMAL`) y duraciones específicas en minutos.
4.  **Horarios (Agendas):** Definición de las jornadas de trabajo de cada profesional mapeadas mediante enumeradores nativos (`DayOfWeek`).
5.  **Turnos:** Entidad central que unifica al cliente, el barbero y el servicio para una fecha y hora específicas, controlando el ciclo de vida de la cita (Pendiente, Confirmado, Cancelado, Asistido).

---

## 🛠️ Tecnologías y Herramientas Utilizadas

* **Lenguaje:** C# (.NET Core)
* **Framework de API:** ASP.NET Core Web API
* **ORM:** Entity Framework Core
* **Base de Datos:** SQL Server
* **Control de Versiones:** Git & GitHub

---

## 🚀 Próximos Pasos en el Desarrollo
* [ ] Implementación de migraciones con EF Core hacia la base de datos local.
* [ ] Desarrollo de los controladores y lógica de validación de turnos.
* [ ] Creación de DTOs (Data Transfer Objects) para optimizar el tráfico de datos y evitar referencias cíclicas en las respuestas JSON.