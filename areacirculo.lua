local pi = math.pi
local continuar = true

local function pregunta()
    print("Desea realizar otra operacion? Escriba 'Y' para si o 'N' para salir: ")
    local respuesta = io.read("*l")
    return respuesta
end

local function pregunta_radio()
    print("Ingresa el valor del radio: ")
    local respuesta_radio = io.read("*l")
    local radio = tonumber(respuesta_radio)

    if radio then
        return radio
    else
        print("Ingrese un valor valido. ")
    end
end

local function calcular(radio)
    local operacion = (pi * radio^2)
    print("El area de tu circulo es: " .. operacion)
end

print("Bienvenido a la calculadora de area de un circulo. ")

while continuar == true do
    local radio = pregunta_radio()
    calcular(radio)

    local respuesta_pregunta = pregunta()
    if respuesta_pregunta == "Y" then
        continuar = true
        elseif  respuesta_pregunta == "N"then
            print("Adios!")
            continuar = false
    else
        print("Input invalido.")
        continuar = false
    end
end