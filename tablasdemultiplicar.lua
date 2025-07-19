local continuar = true
local tablas = {
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
}

local function pregunta()
    print("Desea ingresar otro numero? Escriba 'Y' para si o 'N' para salir: ")
    local respuesta = io.read("*l")
    return respuesta
end

local function numeroValido(mensaje)
    local numero
    repeat
        print(mensaje)
        numero = io.read("*n")
        local _ = io.read("*l")

        if numero == nil then
            print("Ingresa un input valido")
        end
    until numero ~= nil
    return numero
end

local function multipliar()
    local x = numeroValido("Ingresa el numero que quieres saber su tabla de multiplicar: ")
    for i = 1, #tablas do
        local resultado = (x * tablas[i])
        print(resultado)
    end
end

while continuar == true do
    multipliar()

    local respuesta_pregunta = pregunta()

    if respuesta_pregunta == "Y" then
        continuar = true
    elseif respuesta_pregunta == "N" then
        print("Adios!")
        continuar = false
    else
        print("Input invalido")
    end
end
