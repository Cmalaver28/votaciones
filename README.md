# Sistema de Votación Web

## 1. Introducción
El objetivo del proyecto es desarrollar un **sistema de votación** en una página web que permita a los usuarios votar por diferentes candidatos, consultando información detallada de cada uno. El sistema debe ser fácil de usar, seguro y confiable, garantizando que cada usuario pueda votar solo una vez. Está orientado a elecciones democráticas, como las escolares, donde la integridad de los resultados es fundamental.

## 2. Objetivos del Proyecto

### Objetivo General:
Desarrollar un sistema de votación en una página web que permita a los usuarios votar por candidatos, visualizar información detallada de cada candidato y garantizar un proceso de votación seguro y eficiente.

### Objetivos Específicos:
- Crear una **interfaz de usuario** intuitiva que permita a los usuarios ver la lista de candidatos y acceder a sus perfiles.
- Implementar la **funcionalidad de votación** que registre cada voto de manera segura.
- Mostrar **resultados** y permitir a los administradores ver las votaciones.
- Asegurar la **integridad del proceso** implementando medidas para evitar múltiples votos por usuario.

## 3. Tecnologías y Lenguajes de Programación

- **HTML, CSS y JavaScript**: Para desarrollar la interfaz de usuario. HTML estructura el contenido, CSS mejora la apariencia visual, y JavaScript maneja la interactividad.
- **Backend - Node.js**: Ejecuta JavaScript en el servidor para gestionar la comunicación entre frontend y backend.
- **Base de Datos - MySQL**: Utilizada para almacenar los datos de votantes, candidatos y votos.

## 4. Funcionalidades Principales

- **Interfaz de Usuario**: Página amigable que permite a los usuarios ver información detallada de los candidatos y emitir su voto.
- **Registro de Votos**: Cada voto se registra de forma segura, asegurando que cada usuario vote una sola vez.
- **Visualización de Resultados**: Los administradores pueden ver los resultados en tiempo real a través de un panel de administración.

## 5. Alcance del Proyecto

- **Accesibilidad**: Solo usuarios autenticados pueden votar y tendrán una sola oportunidad para emitir su voto.
- **Compatibilidad Móvil**: El sistema es responsivo y permite a los usuarios votar desde dispositivos móviles.
- **Roles de Acceso**: Habrá dos roles principales: votantes y administradores, quienes gestionarán candidatos y resultados.

## 6. Requerimientos Funcionales

- **Listado de Candidatos**: Los votantes podrán consultar la información de los candidatos antes de votar.
- **Validación de Identidad**: Cada usuario tendrá un identificador único que garantiza que solo vote una vez.
- **Registro Seguro de Votos**: Los votos se almacenarán con un control estricto de integridad.
- **Panel de Resultados**: Los administradores pueden acceder a los resultados a través de un panel privado.

## 7. Requerimientos No Funcionales

- **Seguridad**: Los datos de votación estarán encriptados para garantizar su confidencialidad.

## 8. Casos de Uso

- **Caso 1**: Un usuario accede a la página, revisa la información de los candidatos y emite su voto.
- **Caso 2**: Un administrador ingresa al panel para revisar los resultados y verificar la integridad de la votación.

## 9. Pruebas y Validación

- **Pruebas Unitarias**: Cada componente se probará individualmente para asegurar su correcto funcionamiento.
- **Pruebas de Integración**: Se verificará que todos los módulos funcionen correctamente juntos.
- **Pruebas de Usabilidad**: Se realizarán con usuarios reales para garantizar que el sistema sea intuitivo.

## 10. Control de Versiones y Gestión de Código

El proyecto se gestiona utilizando **Git**. Todo el código se almacena en **GitHub**, lo que facilita la colaboración y el control de versiones.

