local continuar = true

local function pregunta()
    print("Desea ingresar otra frase? Escriba 'Y' para si o 'N' para salir: ")
    local respuesta = io.read("*l")
    return respuesta
end

local function isString(mensaje)
    local frase
    repeat
        print(mensaje)
        frase = io.read("*l")

        if frase == nil then
            print("Ingresa una cadena de texto valida")
        end
    until frase ~= nil
    return string.lower(frase)
end

local function letrasen(cadena, letra)
    local _, cantidad = string.gsub(cadena, letra, "")
    return cantidad
end

while continuar == true do
    local preguntar = isString("Ingrese la frase que desea saber cuantas veces hay la letra A: ")
    local letra = "a"

    local cantidad = letrasen(preguntar, letra)
    print("La letra: " .. letra .. " aparece: " .. cantidad .. " veces")

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