local function pregunta()
    print("Ingresa tu numero: ")
    local number = tonumber(io.read("*l"))

    if type(number) ~= "number" or number < 0 or number ~= math.floor(number) then
        error("Ingresa un numero entero positivo.")
    else
        return number
    end
end

local function operacion(number)
    local resultado = 1
    for i = 2, number do
        resultado = i * resultado
    end

    return resultado
end

while true do
    pregunta()

    operacion()

    print("Deseas sacas el factorial de otro numero? (Responde 'y' o 'n' ): ")
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