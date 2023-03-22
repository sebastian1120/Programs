Algoritmo I_CobroStreaming
	Escribir 'Ingrese la hora en la que inicio el Streaming de la siguiente manera HH-MM-SS (230512)'
	Leer inicio
	Escribir 'Ingrese la hora en la que finalizo el Streaming de la siguiente manera HH-MM-SS (120115)'
	Leer finalizar
	size <- Longitud(inicio)
	Si (size==5) Entonces
		horas <- Subcadena(inicio,1,1)
		minutos <- Subcadena(inicio,2,3)
		seg <- Subcadena(inicio,4,5)
	SiNo
		horas <- Subcadena(inicio,1,2)
		minutos <- Subcadena(inicio,3,4)
		seg <- Subcadena(inicio,5,6)
	FinSi
	size1 <- Longitud(finalizar)
	Si (size1==5) Entonces
		horas1 <- Subcadena(finalizar,1,1)
		minutos1 <- Subcadena(finalizar,2,3)
		seg1 <- Subcadena(finalizar,4,5)
	SiNo
		horas1 <- Subcadena(finalizar,1,2)
		minutos1 <- Subcadena(finalizar,3,4)
		seg1 <- Subcadena(finalizar,5,6)
	FinSi
	h <- ConvertirANumero(horas)
	m <- ConvertirANumero(minutos)
	s <- ConvertirANumero(seg)
	h1 <- ConvertirANumero(horas1)
	m1 <- ConvertirANumero(minutos1)
	s1 <- ConvertirANumero(seg1)
	Si h==h1 Entonces
		horaf <- 24
		horaf <- horaf*3600
	SiNo
		Si h>h1 Entonces
			h <- -1*(h-24)+h1
			horaf <- h*3600
		SiNo
			h = h*3600
			h1 = h1*3600
			horaf <- h1-h
		FinSi
	FinSi
	segf <- s1-s
	m <- m*60
	m1 <- m1*60
	minutosf <- m1-m
	segf <- segf+minutosf+horaf
	cobro <- segf*2
	Si (cobro>1000) Entonces
		Escribir 'Su cobro es de $',cobro
	SiNo
		cobro <- 1000
		Escribir 'Su cobro es de $',cobro
	FinSi
FinAlgoritmo

