local operaciones = require("modules.operaciones")

local function numero(mensaje)
    while true do
        print(mensaje)
        local input = io.read("*l")
        local number = tonumber(input)

        if number then
            return number
        else
            print("Introduce un input valido")
        end
    end
end

local function eleccion()
    while true do
        print("-- Menu de opciones --")
        print("1: Suma de 2 numeros")
        print("2: Resta de 2 numeros")
        print("3: Multiplicacion de 2 numeros")
        print("4: Exponente de un numero")
        print("5: Salir del programa")

        local input = io.read("*l")
        local opcion = tonumber(input)

        if opcion and opcion >= 1 and opcion <= 5 then
            return opcion
        else
            print("Introduce un input valido")
        end
    end
end

local function operacion(opcion)
    local a, b

    if opcion == 1 then
        a = numero("Introduce el primer numero:")
        b = numero("Introduce el segundo numero:")

        return operaciones.suma(a, b)
    elseif opcion == 2 then
        a = numero("Introduce el primer numero:")
        b = numero("Introduce el segundo numero:")

        return operaciones.resta(a, b)
    elseif opcion == 3 then
        a = numero("Introduce el primer numero:")
        b = numero("Introduce el segundo numero:")

        return operaciones.multiplicacion(a, b)
    elseif opcion == 4 then
        a = numero("Introduce la base:")
        b = numero("Introduce el exponente:")

        return operaciones.exponents(a, b)
    end
end

print("Bievenido a un programa simple de operadores basicos")

while true do
    local opcion = eleccion()

    if opcion == 5 then
        print("Adios!")
        return
    else
        local resultado = operacion(opcion)
        print("El resultado es: " .. resultado)
    end
end