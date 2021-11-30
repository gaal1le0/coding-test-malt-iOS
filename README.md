# Prueba de código Android/iOS - Orange Bank
Ejercicio a realizar
El ejercicio consiste en la implementación de una sencilla aplicación móvil que presente por pantalla información de las transacciones de una cuenta bancaria obtenidas de un servicio web en formato JSON.
La prueba debe ser escrita en Swift para iOS o Kotlin para Android.
La entrega se debe realizar subiendo el proyecto a un repositorio de ​Github​ dando acceso de
Es muy importante que el repositorio sea privado​ y no tenga ninguna referencia a Orange o Orange Bank en el nombre, código, clases...
Datos a obtener

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
