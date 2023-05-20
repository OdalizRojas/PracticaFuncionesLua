-----------------------------------------------------------------------------------------
--
-- Practica #1: Funciones en Lua
-- Alumna: Odaliz Rojas
--
-----------------------------------------------------------------------------------------

-- 1. PRACTICA 

-- a. Función factorial.
print("====== Fibonacci ======")

function factorial(n)
	if n == 0 then
		return 1
	else
		return n * factorial(n-1)
	end
end

--== Pruebas:
-- 0! = 1
print("El factorial de 0 es: "..factorial(0))

-- 5! = 120
print("El factorial de 5 es: "..factorial(5))

-- 12! = 479001600
print("El factorial de 12 es: "..factorial(12))

---------------------------------------------------
-- b. Función para calculo de Fibonacci.
print("====== Fibonacci ======")

function fibonacci(n)
    local array_fibonacci = {}
    array_fibonacci[1] = 1
    array_fibonacci[2] = 1

    for i=3, n, 1 do
        array_fibonacci[i] = array_fibonacci[i-2] + array_fibonacci[i-1]
    end
    return array_fibonacci[n]
end

--== Pruebas:
-- F(n) = [1], 1, 2, 3, 5, 8, 13, 21, [34], 55, 89, 144, 233, 377, 610, [987], 1597, ... N
local prueba1 = fibonacci(1)
print("La funcion de Fibonacci de 1 es: ".. prueba1)

local prueba9 = fibonacci(9)
print("La funcion de Fibonacci de 9 es: ".. prueba9)

local prueba16 = fibonacci(16)
print("La funcion de Fibonacci de 16 es: ".. prueba16)

---------------------------------------------------
-- c. Calcular si un número es primo.
print("====== Verificar numeros primos ======")

function es_primo(n)
	if n % 2 == 0 then
		return false
	end
	for i=3, math.sqrt(n), 2 do
		if n % i == 0 then
			return false
		end
	end
	return true
end

--== Pruebas:
--  3 -> false 
print( "¿El numero 3 es primo? ".. tostring(es_primo(3)))

--  12 -> false 
print( "¿El numero 12 es primo? ".. tostring(es_primo(12)))

--  59 -> false 
print( "¿El numero 59 es primo? ".. tostring(es_primo(59)))

---------------------------------------------------
-- d. Verificar si un número es capicúa.
print("====== Verificar si un numero es capicua ======")

function esCapicua(n)
    local numeroInvertido = 0
    local numeroOriginal = n
  
    -- Invertir el número
    while n > 0 do
      local residuo = n % 10
      numeroInvertido = numeroInvertido * 10 + residuo
      n = math.floor(n / 10)
    end
  
    -- Verificar si el número invertido es igual al original
    if numeroOriginal == numeroInvertido then
      return true
    else
      return false
    end
  end
  
--== Pruebas:
--  12321 -> true
local n1 = 12321
print( "¿El numero 12321 es capicua? ".. tostring(esCapicua(n1)))

--  15248965 -> false
local n2 = 15248965
print( "¿El numero 15248965 es capicua? ".. tostring(esCapicua(n2)))

--  1235321 -> true
local n3 = 1235321
print( "¿El numero 1235321 es capicua? ".. tostring(esCapicua(n3)))

---------------------------------------------------
-- e. Verificar si un string es palíndromo.
print("====== Verificar si un string es capicua ======")

function esCapicua_string(string_input)
    if string_input == string.reverse(string_input) then
      return true
    else
      return false
    end
  end

--== Pruebas:
--  {oruro} -> true
local string1 = "oruro"
print( "¿La palabra {oruro} es capicua? ".. tostring(esCapicua_string(string1)))

--  {potosi} -> false
local string2 = "potosi"
print( "¿La palabra {potosi} es capicua? ".. tostring(esCapicua_string(string2)))

--  {reconocer} -> true
local string3 = "reconocer"
print( "¿La palabra {reconocer} es capicua? ".. tostring(esCapicua_string(string3)))

---------------------------------------------------
-- f. Valor único en un conjunto de datos.
print("====== Verificar si es un valor unico en un conjunto ======")

function es_unico(lista, valor)
	local contador = 0
	for i=1, #lista do
		if lista[i] == valor then 
			contador = contador+1
		end
	end

	if contador == 1 then 
		return true
	else
		return false
	end
end

--== Pruebas:
local lista = {1,4,7,3,6,2,5,3,4}
-- 7 -> true
print("¿El numero 7 es unico en la lista? "..tostring(es_unico( lista, 7)))

-- 3 -> false
print("¿El numero 3 es unico en la lista? "..tostring(es_unico( lista, 3)))

-- 2 -> false
print("¿El numero 2 es unico en la lista? "..tostring(es_unico( lista, 2)))

---------------------------------------------------
-- g. Calculo de la hipotenusa de un triangula rectángulo dado sus catetos.
print("====== Verificar si es un valor unico en un conjunto ======")

function valorHipotenusa(catetoC, catetoB)
  local hipotenusa = math.sqrt(catetoC^2 + catetoB^2)
  return hipotenusa
end

--== Pruebas:
local ladoC1 = 12
local ladoB1 = 15
print("El valor de la hipotenusa del triangulo con los catetos: "..ladoC1.." y "..ladoB1.." es: "..valorHipotenusa(ladoC1, ladoB1))


local ladoC2 = 3
local ladoB2 = 4
print("El valor de la hipotenusa del triangulo con los catetos: "..ladoC2.." y "..ladoB2.." es: "..valorHipotenusa(ladoC2, ladoB2))

local ladoC3 = 10
local ladoB3 = 9
print("El valor de la hipotenusa del triangulo con los catetos: "..ladoC3.." y "..ladoB3.." es: "..valorHipotenusa(ladoC3, ladoB3))

---------------------------------------------------
-- h. Distancia entre dos puntos. “dist_puntos(ax, ay, bx, by)”.
print("====== Calcular la distancia entre dos puntos, dado sus coordenadas ======")

-- Utilizando la  fórmula de la distancia euclidiana:

function calculo_distancia(ax, ay, bx, by)
  local distancia = math.sqrt((ax - bx)^2 + (ay - by)^2)
  return distancia
end

--== Pruebas:

-- resultado =  3.6
local x1, y1 = 0, 0
local x2, y2 = 2, 3
print("La distancia entre el punto ("..x1.." , "..y1..")".." y el punto ("..x2.." , "..y2..")".."es: "..calculo_distancia(x1, y1, x2, y2))

-- resultado = 9.8
local x1, y1 = 1, 1
local x2, y2 = 5, 10
print("La distancia entre el punto ("..x1.." , "..y1..")".." y el punto ("..x2.." , "..y2..")".."es: "..calculo_distancia(x1, y1, x2, y2))

-- resultado = 10.05
local x1, y1 = 0, 1
local x2, y2 = 10, 0
print("La distancia entre el punto ("..x1.." , "..y1..")".." y el punto ("..x2.." , "..y2..")".."es: "..calculo_distancia(x1, y1, x2, y2))

---------------------------------------------------
-- i. Contar la cantidad de elementos repetidos en una lista.
print("====== Calcular la cantidad de elementos repetidos en una lista ======")

function es_repetido(lista, valor)
	local contador = 0
	for i=1, #lista do
		if lista[i] == valor then 
			contador = contador+1
		end
	end

	if contador == 1 then 
		return false
	else
		return true
	end
end

--== Pruebas:
-- Se esta usando la lista de arriba 
-- {1,4,7,3,6,2,5,3,4}

-- 7 -> false
print("¿El numero 7 esta repetido en la lista? "..tostring(es_repetido( lista, 7)))

-- 3 -> true
print("¿El numero 3 esta repetido en la lista? "..tostring(es_repetido( lista, 3)))

-- 2 -> true
print("¿El numero 2 esta repetido en la lista? "..tostring(es_repetido( lista, 2)))

---------------------------------------------------
-- j. Calcular si 3 puntos son colineales.
-- Si los tres puntos esta alineados en una misma linea recta, significa que son colineales
print("====== Calcular si 3 puntos son colineales ======")

function son_colineales(ax, ay, bx, by, cx, cy)
  local pendiente1 = (by - ay) / (bx - ax)
  local pendiente2 = (cy - by) / (cx - bx)

  -- math.abs saca el valor absoluto, se compara con un valor pequeño 1e-3
  if math.abs(pendiente1 - pendiente2) < 1e-3 then
    return true 
  else
    return false 
  end
end

--== Pruebas:
local x1, y1 = 1, 1
local x2, y2 = 2, 2
local x3, y3 = 3, 3
-- Si es colineal
print("¿Los puntos son colineales? "..tostring(son_colineales(x1,y1,x2,y2,x3,y3)))

local x1, y1 = 0, 0
local x2, y2 = 2, 0
local x3, y3 = 4, 0
-- Si es colineal
print("¿Los puntos son colineales? "..tostring(son_colineales(x1,y1,x2,y2,x3,y3)))

local x1, y1 = 0, 1
local x2, y2 = 2, 10
local x3, y3 = 4, 9
-- No es colineal
print("¿Los puntos son colineales? "..tostring(son_colineales(x1,y1,x2,y2,x3,y3)))

-----------------------------------------------------------------------------------------

-- 2. TAREA

-- a. Validar si un punto esta dentro de una circunferencia.
print("====== Validar si un punto esta dentro de una circunferencia ======")

function status_punto(px, py, oX, oY, radio)
  local distancia = math.sqrt((px - oX)^2 + (py - oY)^2)
  if distancia <= radio then
    return true 
  else
    return false
  end
end

--== Pruebas:
-- respuesta -> true
local centroX, centroY = 0, 0
local radio = 5
local puntoX, puntoY = 3, 4
print("¿El punto está dentro de la circunferencia? "..tostring(status_punto(puntoX, puntoY, centroX, centroY, radio)))

-- respuesta -> false
local centroX, centroY = 0, 0
local radio = 5
local puntoX, puntoY = 6, 8
print("¿El punto está dentro de la circunferencia? "..tostring(status_punto(puntoX, puntoY, centroX, centroY, radio)))

-- respuesta -> true
local centroX, centroY = 0, 0
local radio = 5
local puntoX, puntoY = -2, 1
print("¿El punto está dentro de la circunferencia? "..tostring(status_punto(puntoX, puntoY, centroX, centroY, radio)))

---------------------------------------------------
-- b. Validar si un punto esta dentro de un cuadrilatero.
print("====== Validar si un punto esta dentro de un cuadrilatero ======")

-- Utilizando el metodo del producto cruzado, considerando que sera un poligono convexo

function statusPuntoCuadrilatero(pX, pY, v1X, v1Y, v2X, v2Y, v3X, v3Y, v4X, v4Y)
  local prod1 = productoX(v2X - v1X, v2Y - v1Y, pX - v1X, pY - v1Y)
  local prod2 = productoX(v3X - v2X, v3Y - v2Y, pX - v2X, pY - v2Y)
  local prod3 = productoX(v4X - v3X, v4Y - v3Y, pX - v3X, pY - v3Y)
  local prod4 = productoX(v1X - v4X, v1Y - v4Y, pX - v4X, pY - v4Y)

  if (prod1 >= 0 and prod2 >= 0 and prod3 >= 0 and prod4 >= 0) or (prod1 <= 0 and prod2 <= 0 and prod3 <= 0 and prod4 <= 0) then
    return true 
  else
    return false
  end
end

function productoX(x1, y1, x2, y2)
  return x1 * y2 - y1 * x2
end

--== Pruebas:
-- Esta dentro del cuadrilatero -> true
local vertice1X, vertice1Y = 0, 0
local vertice2X, vertice2Y = 2, 0
local vertice3X, vertice3Y = 2, 2
local vertice4X, vertice4Y = 0, 2
local puntoX, puntoY = 1, 1
print("¿El punto está dentro del cuadrilátero? "..tostring(statusPuntoCuadrilatero(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y, vertice4X, vertice4Y)))

-- Esta fuera del cuadrilatero -> false
local vertice1X, vertice1Y = 0, 0
local vertice2X, vertice2Y = 2, 0
local vertice3X, vertice3Y = 2, 2
local vertice4X, vertice4Y = 0, 2
local puntoX, puntoY = 3, 1
print("¿El punto está dentro del cuadrilátero? "..tostring(statusPuntoCuadrilatero(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y, vertice4X, vertice4Y)))

-- Esta dentro del cuadrilatero -> true
local vertice1X, vertice1Y = -1, -1
local vertice2X, vertice2Y = 1, -1
local vertice3X, vertice3Y = 1, 1
local vertice4X, vertice4Y = -1, 1
local puntoX, puntoY = 1, 1
print("¿El punto está dentro del cuadrilátero? "..tostring(statusPuntoCuadrilatero(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y, vertice4X, vertice4Y)))

---------------------------------------------------
-- c. Validar si un punto esta dentro de un triángulo.
print("====== Validar si un punto esta dentro de un triángulo ======")

-- Utilizando el metodo de las coordenadas baricentricas, en triangulos no degenerados:

function statusPuntoTriangulo(pX, pY, v1X, v1Y, v2X, v2Y, v3X, v3Y)
  local b1 = ((v2Y - v3Y) * (pX - v3X) + (v3X - v2X) * (pY - v3Y)) / ((v2Y - v3Y) * (v1X - v3X) + (v3X - v2X) * (v1Y - v3Y))
  local b2 = ((v3Y - v1Y) * (pX - v3X) + (v1X - v3X) * (pY - v3Y)) / ((v2Y - v3Y) * (v1X - v3X) + (v3X - v2X) * (v1Y - v3Y))
  local b3 = 1 - b1 - b2

  if b1 >= 0 and b2 >= 0 and b3 >= 0 then
    return true
  else
    return false
  end
end

--== Pruebas:
-- Esta dentro del triangulo -> true
local vertice1X, vertice1Y = 0, 0
local vertice2X, vertice2Y = 2, 0
local vertice3X, vertice3Y = 1, 2
local puntoX, puntoY = 1, 1
print("¿El punto está dentro del triangulo? "..tostring(statusPuntoTriangulo(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y)))

-- Esta fuera del triangulo -> false
local vertice1X, vertice1Y = 0, 0
local vertice2X, vertice2Y = 2, 0
local vertice3X, vertice3Y = 1, 2
local puntoX, puntoY = 3, 1
print("¿El punto está dentro del triangulo? "..tostring(statusPuntoTriangulo(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y)))

-- Esta dentro del triangulo -> true
local vertice1X, vertice1Y = -2, -2
local vertice2X, vertice2Y = -2, 2
local vertice3X, vertice3Y = 2, 0
local puntoX, puntoY = -1, 1
print("¿El punto está dentro del triangulo? "..tostring(statusPuntoTriangulo(puntoX, puntoY, vertice1X, vertice1Y, vertice2X, vertice2Y, vertice3X, vertice3Y)))

---------------------------------------------------
-- d. Dados 3 puntos, calcular los ángulos internos del triangulo.
print("====== Calcular los ángulos internos del triangulo ======")

function calcularAngulos(p1X, p1Y, p2X, p2Y, p3X, p3Y)
  -- Longitud de los lados A, B y C
  local A = math.sqrt((p2X - p3X)^2 + (p2Y - p3Y)^2)
  local B = math.sqrt((p1X - p3X)^2 + (p1Y - p3Y)^2)
  local C = math.sqrt((p1X - p2X)^2 + (p1Y - p2Y)^2)

  -- Usano el teorema del coseno para calcular los angulos
  local alpha = math.deg(math.acos((B^2 + C^2 - A^2) / (2 * B * C)))
  local beta = math.deg(math.acos((A^2 + C^2 - B^2) / (2 * A * C)))
  local sigma = math.deg(math.acos((A^2 + B^2 - C^2) / (2 * A * B)))

  return alpha, beta, sigma
end

--== Pruebas:
local punto1X, punto1Y = 0, 0
local punto2X, punto2Y = 2, 0
local punto3X, punto3Y = 1, 2
local alpha, beta, sigma = calcularAngulos(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("El angulo Alpha:", alpha)
print("El angulo Beta:", beta)
print("El angulo Sigma:", sigma)

local punto1X, punto1Y = 0, 0
local punto2X, punto2Y = 3, 0
local punto3X, punto3Y = 0, 4
local alpha, anguloB, sigma = calcularAngulos(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("El angulo Alpha:", alpha)
print("El angulo Beta:", beta)
print("El angulo Sigma:", sigma)

local punto1X, punto1Y = -2, -2
local punto2X, punto2Y = 2, -2
local punto3X, punto3Y = 0, 3
local alpha, anguloB, sigma = calcularAngulos(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("El angulo Alpha:", alpha)
print("El angulo Beta:", beta)
print("El angulo Sigma:", sigma)

---------------------------------------------------
-- e. Dado 3 puntos de un triángulo, obtener las coordenadas del baricentro del triángulo.
print("====== Obtener las coordenadas del baricentro del triángulo ======")

-- Calculando el baricentro como el promedio de las coordenadas de los puntos
function calcularBaricentro(p1X, p1Y, p2X, p2Y, p3X, p3Y)
  local barX = (p1X + p2X + p3X) / 3
  local barY = (p1Y + p2Y + p3Y) / 3

  return barX, barY
end

--== Pruebas:
local punto1X, punto1Y = 1, 1
local punto2X, punto2Y = 5, 1
local punto3X, punto3Y = 3, 6

local baricentroX, baricentroY = calcularBaricentro(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Dados los tres puntos, las coordenadas del baricentro son: (" .. baricentroX .. ", " .. baricentroY .. ")")

local punto1X, punto1Y = 0, 0
local punto2X, punto2Y = 3, 0
local punto3X, punto3Y = 0, 4

local baricentroX, baricentroY = calcularBaricentro(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Dados los tres puntos, las coordenadas del baricentro son: (" .. baricentroX .. ", " .. baricentroY .. ")")

local punto1X, punto1Y = -2, -2
local punto2X, punto2Y = 2, -2
local punto3X, punto3Y = 0, 3

local baricentroX, baricentroY = calcularBaricentro(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Dados los tres puntos, las coordenadas del baricentro son: (" .. baricentroX .. ", " .. baricentroY .. ")")

---------------------------------------------------
-- f. Dado 3 puntos de un triángulo, obtener las coordenadas del punto medio del triángulo, (incentro).
print("====== Obtener las coordenadas del punto medio del triángulo ======")

function calcularPuntoMedio(p1X, p1Y, p2X, p2Y, p3X, p3Y)
  pMedioX = (p1X + p2X + p3X) / 2
  pMedioY = (p1Y + p2Y + p3Y) / 2

  return pMedioX, pMedioY
end

--== Pruebas:
local punto1X, punto1Y = 1, 1
local punto2X, punto2Y = 5, 1
local punto3X, punto3Y = 3, 6
local puntoMedioX, puntoMedioY = calcularPuntoMedio(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Las coordenadas del punto medio son: (" .. puntoMedioX .. ", " .. puntoMedioY .. ")")

local punto1X, punto1Y = 0, 0
local punto2X, punto2Y = 4, 0
local punto3X, punto3Y = 2, 4
local puntoMedioX, puntoMedioY = calcularPuntoMedio(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Las coordenadas del punto medio son: (" .. puntoMedioX .. ", " .. puntoMedioY .. ")")

local punto1X, punto1Y = 2, 2
local punto2X, punto2Y = 6, 2
local punto3X, punto3Y = 4, 7
local puntoMedioX, puntoMedioY = calcularPuntoMedio(punto1X, punto1Y, punto2X, punto2Y, punto3X, punto3Y)
print("Las coordenadas del punto medio son: (" .. puntoMedioX .. ", " .. puntoMedioY .. ")")

---------------------------------------------------