// Unidad Nº3 ARQSOSIED - Actividad3, 
// Autor: Javier Fuchs - CAECE
// ACTIVIDAD DE LA CLASE UNIDAD 3
// * Profundizar el aprendizaje sobre estructuras de datos.
// * Aprender sobre la dimensionalidad de los arreglos
// * Comprender sobre algoritmos de búsqueda
// Actividad
// Estás en un negocio y compraste varios productos por un valor de $2450. 
// Escribir un algoritmo que calcule el vuelto que te deben dar. 
// El algoritmo debe pedir ingresar el valor total de compra de productos, el valor pagado. 
// A partir de allí calcular el vuelto e imprimir el valor del vuelto en la pantalla.

Proceso CalcularVuelto
	
	// El algoritmo debe pedir ingresar el valor total de compra de productos. 
	
    Escribir "Ingrese el valor TOTAL de compra de productos:"
    Leer Total
	
	// Ahora debe pedir ingresar el valor pagado
    Escribir "Ingrese el valor PAGADO:"
    Leer Pagado
	
	
    // A continuación calcular el vuelto
    
    Vuelto <- Pagado-Total
	
	
    // imprimir el valor del vuelto en la pantalla
    
    Escribir "Su VUELTO es: ",Vuelto
	
FinProceso
