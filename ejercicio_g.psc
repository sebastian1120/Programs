Algoritmo ejercicio_g
	Repetir
		Escribir "ingresa a,b y c variables que no tenga soluci�n en los complejos"
		Leer a
		Leer b
		Leer c
	Hasta Que b^2-4*a*c>0
	x1 <- (-b-raiz(b^2-4*a*c))/(2*a)
	x2 <- (-b+raiz(b^2-4*a*c))/(2*a)
	Escribir x1,' es nuestra primera soluci�n y ',x2,' es nuestra segunda soluci�n'
FinAlgoritmo
