local tasas = require("modules.tasas")

local function errorHandler(mensaje)
    local moneda = nil
    local opciones = {
        usd = true,
        yen = true,
        euro = true
    }
    repeat
        print(mensaje)
        moneda = string.lower(io.read("*l"))

        if not opciones[moneda] then
            print("Ingresa una moneda válida (usd, euro, yen)")
            moneda = nil
        end
    until moneda ~= nil
    return moneda
end

local function pregunta()
    local moneda = errorHandler("Ingrese a que moneda quiere convertir sus mxn (usd, yen, euro): ")

    print("Ingrese la cantidad de mxn que desea convertir a: ")
    local cantidad = io.read("*n")
    local _ = io.read("*l")

    if not cantidad then
        print("Ingresa un input valido")
        return
    end
    return moneda, cantidad
end

local function conversion()
    local moneda, cantidad = pregunta()

    local tasa = tasas[moneda]

    local multiplicacion = cantidad * tasa

    print(cantidad .. " mxn son: " .. multiplicacion .. " " .. moneda )
end

while true do
    conversion()

    print("Deseas hacer otra conversion? (Responde 'y' o 'n' ): ")
    local respuesta = string.lower(io.read("*l"))

    if respuesta == "y" then

    elseif respuesta == "n" then
        print("Adios!")
        break
    else
        print("Ingresa un input valido")
        break
    end
end

-- 15/07/2025