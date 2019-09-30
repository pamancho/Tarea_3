listaDeNumeros <- list(2,5,6,2,1,5,6,10,11,20,15)
listaDeNumeros[5]

#Ejercicio 1: 
#se prueban los comandos para distintas posiciones de la lista de numeros.
listaDeNumeros[0]
listaDeNumeros[12]

#Ejercicio 2: 
#se corren comandos para observar diferencias entre list & unlist 
list(listaDeNumeros)
unlist(listaDeNumeros)
unlist(listaDeNumeros[5])
if(listaDeNumeros[5])+1>0){
  print("se cumple")
}
if(unlist(listaDeNumeros[5])+1>0){
  print("se cumple")
}

#Ejercicio 3: 
#se reemplaza un numero de la lista.
listaDeNumeros[5] <- 12
listaDeNumeros[5]

#Ejercicio 4:
#se utiliza el comando lenght
length(listaDeNumeros)

#Ejercicio 5:
#se realizan secuencias de numeros entre 5 & 20.
valorinicial <-5
valorfinal <-20
valorinicial : valorfinal
#ahora se inivierte
valorinicial <-20
valorfinal <-5
valorinicial : valorfinal
#ahora con el lenght
valorinicial : length(listaDeNumeros)

#Ejercicio 6: 
#se ejecuta un comando for-loop.
for(i in 1 : 100){
  print(paste("cuento ",i," misisipis"))
}

#Ejercicio 7:
#se adapta el comando anterior a la lista de numeros.
for(i in listaDeNumeros){
  print(paste("cuento ",i," misisipis"))
}

#Ejercicio 8:
#se adapta el codigo anterior para ver si los numeros son pares o impares.
for(i in listaDeNumeros){
  print(i)
if(i%%2==0) {print("par")} else {print("impar")}
}

#Ejercicio 9:
#determinar_ganador: int int int -> string
#determinar_ganador: gana la opcion con mayor cantidad de votos
#en el caso de que exista quorum (50%+1) y hay empate gana la opcion "si",
#en el caso de que no exista quorum gana aquel con mayor cantidad de votos
#siempre y cuando sea mayor al 30% del total del padron electoral, de lo contrario
#gana la opcion "no".
#ejemplo: determinar_ganador(100,59,41) -> "si"

determinar_ganador<-function(total,votosSi,votosNo){
  if(votosSi+votosNo>total){
    "mala"
  }else if(votosSi>=votosNo && votosSi>=0.3*total){
    paste("si")
  }else{
    paste("no")
  }
}

determinar_ganador(100,59,41)

#Ejercicio 10: 
#Suma: double double-> double
#Suma: se calcula la suma entre la variable a y variable b
#Ejemplo: 1+2->3
Suma<-function(a,b){
  a+b
}
Suma(3,4)
#resta: double double -> double
#resta: se calcula la diferencia entre la variable a y variable b
#ejemplo: 3-2 ->1
resta<-function(a,b){
  a-b
}
resta(3,4)
#multiplicacion: double double -> double
#multiplicacion: se multiplica la variable a con la variable b
#ejemplo: 100000*0 -> 0
multiplicacion<-function(a,b){
  a*b
}
multiplicacion(3,4)
#division: double double -> double
#division: se divide la variable a con la variable b
#ejemplo: 1/2 -> 0.5
division<-function(a,b){
  a/b
}
division(3,4)

#Ejercicio 11:
#Areaa_rectangulo: double double -> double
#Area rectangulo: se calcula la diferencia entre dos areas de rectangulos
#ejemplo: area_rectangulo(1,2,3,4)->-10
area_rectangulo<-function(b1,h1,b2,h2){
  (b1*h1)-(b2*h2)
}

area_rectangulo(4,5,1.5,2)

#area_circulo: double double -> double
#area_circulo: se calcula la diferencia entre dos areas de circulos
#Ejemplo: area_circulo(1,2) ->9.424778
area_circulo<-function(radio1,radio2){
  abs((pi*radio1^2)-(pi*radio2^2))
}

area_circulo(2,1)
