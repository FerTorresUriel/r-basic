#   PARA EJECUTAR CADA LINEA TECLEAR ENTER + CTRL
#   PARA MOVERTE ENTRE LA CONSOLA Y EL SCRIPT PULSA CTR; + 1 O CTRL + 2  segun el caso 
#   para lo anterior es importante que sean con los numeros superiores del teclado !!
#   Para pedir ayuda, hay dos opciones
##  Opcion 1
##  cmd: help('algun_comando')
### ejemplo:
help("install.packages")
# # Opcion 2
# # cmd: ?algun_comando
# # # ejemplo:
?install.packages
# Paquete como instalarlos y activarlos
# # para instalar/actualizar un paquete:
# # cmd: install.packages('nombre_paquete',dep = TRUE)
# # # ejemplo
install.packages('ggplot2',dep = TRUE)
# # activa el paquete
# # cmd: library(paquete)
# # # ejemplo:
library(ggplot2)
# # desactiva el paquete
# # cmd: detach('package:paquete',unload = TRUE) 
# # aunque esto tambien puede ser controlado desde la ventana packages

#   R COMO CALCULADORA
#
# # SUMAS Y MULTIPLICACIONES
# # podemos ocupar R para hacer operaciones directamente como sigue:
# # es importante tener cuidado con los parentesis 
# # en este caso consideraria 5/2 + 3 no (5+3)/2 
2*(3+5/2)
#   no importa que tan alejado pongas la division
2*(3+5    /2)
#   por eso es mas recomendable poner los parenteris para especificar la operacion 
2*((3+5)/2)
2/3+5
# # COSCIENTE ENTERO
# # cmd: `m%/%n`
# # cuantas veces cabe el m en el n?
2%/%3 
17%/%4 # 4 pues 17/4 seria (4 + 1/4)
# # ahora si queremos obtener ese 1/4 que nos faltaba podemos usar
# #
# # RESTO DE DIVISION ENTERA o MODULO
# # cmd: `m%%n`
# # cual es el faltante(resto) r , tal que suceda que m/n = m%/%n + r/n ?
# # lo anterior es lo mismo que ->  m/n = m%/%n + (m%%n)/n
# # otra forma de verlo es el numero de unidades que no alcanzaron a ser un n-entero
2%%3
17%%4
# # esto es muy util para identificar numeros pares de numeros impares
# # numero par(2n)      -> Sea q numero par, entonces q%%2 == 0 } es igual a cero
# # numero impar(2n+1)  -> Sea q numero par, entonces q%%2 != 0 } es diferente de cero
2^3*5

2^-4

2^(-4)

725%/%7

725%%7
# D = d * q + r
# r = D - d * q
# q = D %/% d
# x = D %% d 
725 - 103*7

pi

2*pi

3^pi

pi^2

Inf

-Inf

NA

NaN

5/0

0/0

2^50# = 1.1259e+15 = 1125900000000000 

2 ^(-15) # 3.051758e-05 = 0.00003051758

c(2^30, 2^(-15), 1, 2, 3/2)


sqrt(25)

exp(1)

log(pi)

log(32, 2)

log(32, base = 2)
log(base=2, 32)

abs(-pi)

factorial(7)

factorial(4)

factorial(0)

choose(5, 3)

choose(3,5)

log(4^6, 4)

6^log(4,6)

choose(5,2)

sin(60*pi/180)

cos(60*pi/180)

sinpi(1/2) # = sin (pi/2)

tan(pi) # -1.224647e-16 ~ 0

tan(pi/2) # 1.633124e+16 ~ Inf

asin(0.8660254) #arc sin en radianes

asin(0.8660254) * 180 /pi #arc sin en grados

asin(5) #arc sin x in [-1,1]

acos(-8)

print(sqrt(2),10)
round(sqrt(2), 3)
floor(sqrt(2))
ceiling(sqrt(2))
trunc(sqrt(2))

sqrt(2)^2-2

round(sqrt(2), 4)^2

2^50
print(2^50, 15)
print(2^50, 2)
print(pi, 22)
#3.141592653589793115998
#3.141592653589793238462

round(1.25,1)
round(1.35,1)
round(sqrt(2),0)
round(sqrt(2))

round(digits = 5, sqrt(2))
round(5, sqrt(2))


floor(-3.45)
ceiling(-3.45)
trunc(-3.45)


x = (pi^2)/2
x

y <- cos(pi/4)
y

sin(pi/4) + cos(pi/4) -> z
z

edad <- 30

nombre = "Juan Gabriel"

HOLA = 1
hola = 5

pi.4 = 4*pi
pi.4

x = 2
x = x^2

x = sqrt(x)


# Funciones 
presion = function(x,t) {91 - (200*10/(15*6*2))*(15*t/400)*x}

## Función f(x) = x^3 - (3^x)* sen(x)
f = function(x) {
  x^3 - (3^x) * sin(x)
}

f(4) # 4^3 - 3^4 * sin(4)
f(5)
f(pi/2)

suma1 <- function(t){
  t + 1
}
suma1(6)
suma1(-5)

product <- function(x, y){
  x*y
}
product(5,7)

g <- function(x,y,z) {
  exp(x^2 + y^2) * sin(z)
}
g(1, 2, 3)
g(1, -1, pi)

suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}

suma5(3)

ls()

rm(product)

ls()

rm(list = ls())

class(3+2i)

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

#Esto es un error:
#2+7*i

#pi + sqrt(2)i
complex(real = pi, imaginary = sqrt(2)) -> z1
z1

sqrt(-5)
sqrt(as.complex(-5))

#La raíz cuadrada devuelve, de las dos soluciones la de
#Re(z)>0, para obtener la otra,  hay que multiplicar por -1
sqrt(3+2i) # z^2 = 3+2i
exp(3+2i)
sin(3+2i)
cos(3+2i)

#Módulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)
#Argumento = arctan(Im(z)/Re(z))
# = arccos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# va de (-pi, pi]
Arg(-1+0i)
Arg(-1-2i)
#Conjugado = Re(z)- Im(z)i
Conj(z1)
#Parte Real y Parte Imaginaria
Re(z1)
Im(z1)

### z = Mod(z) * (cos(Arg(z))+sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2
z2
Mod(z2)
Arg(z2)
pi/2