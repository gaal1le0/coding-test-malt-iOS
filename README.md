# Prueba de código Android/iOS 
Ejercicio a realizar
El ejercicio consiste en la implementación de una sencilla aplicación móvil que presente por pantalla información de las transacciones de una cuenta bancaria obtenidas de un servicio web en formato JSON.
La prueba debe ser escrita en Swift para iOS o Kotlin para Android.
La entrega se debe realizar subiendo el proyecto a un repositorio de Github dando acceso de

La lista de transacciones está disponible en esta url:

https://code-challenge-e9f47.web.app/transactions.json

Notas
- Las transacciones no están ordenadas por fecha.
- El campo ‘amount’ indica un gasto (valor negativo) o un ingreso (valor positivo).
- El campo ‘fee’ indica una comisión a aplicar sobre el gasto o ingreso.
- Algunos campos pueden tener valor vacío, nulo o no existir.
- Los campos ‘amount’ y ‘fee’ se suponen en euros.


Requisitos
1. Mostrar en la parte superior de la pantalla la última transacción ocurrida.
2. Mostrar debajo el resto de transacciones ordenadas por fecha.
3. Mostrar el total de cada transacción teniendo en cuenta la comisión.
4. Mostrar un distintivo verde en los ingresos y rojo en los gastos.
5. No mostrar transacciones con formato de fecha inválido.
6. En caso de transacciones con el mismo id se deberá mostrar la más reciente.


Recomendaciones
- Tiempo de realización del ejercicio de entre 2 y 3 horas.
- Libre elección de los componentes de diseño gráfico a utilizar.
- Aplicación de patrones de diseño de forma sencilla.
- Está permitido el uso de cualquier librería de terceros.
- Serán muy valoradas las explicaciones utilizando comentarios.
- Indicar funcionalidades no finalizadas o posibles mejoras con TODO.

## Aclaraciones

- Se ha implementado una arquitectura MVP-C desacoplado. 
- La gestion de las vistas la lleva un coordinador que es llamado `RootCoordinator`, el cordinador no tiene la responsabilidad de crear cada instancia, por lo que se usa concretamente una Factoria Abstracta `RootFactory` para la creacción de todas las piezas necesarias. 
- Las vistas estan construidas con XIB ya que en un supuesto caso de escalamiento sería bastante sencillo, no tendríamos nada de conflictos con git. Además el tiempo de compilación de estos archivos termina siendo menor cuando los storyboards son muy largos.
- El punto de entrada de la aplicacion `SceneDelegate` crea las instancias necesarias que inyecta al `RootCordinator` dando así comienzo a la aplicación.
- Se ha usado Protocolos para comunicar la vista con el presenter con un aditivo de estados para controlar el estado genérico de la vista.
- La capa de rez es gestionada por un módulo creado para la app: `Networking`, me gusta llamarle Mermelada de Swift ☺️. Basado en programación orientada a protocolos. Dicha capa incluye test unitarios con algunos Mocks como demostracción. 
- El proyecto contiene un test unitario que testea el formateo de fechas. Para cumplir con los tiempos del proyecto se ha dedicido no implmentar más test unitarios en la base del proyecto. 
- El transito de datos sigue el siguiente flujo: Response -> DTO (Domain Transition Object) -> DOM (Domain Object Model). El último usado por la vista para pintar las celdas.

PD: Cualquier duda o aclaración necesaria en el código no dudes en contactar conmigo :) 
