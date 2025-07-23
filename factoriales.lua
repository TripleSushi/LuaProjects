local function pregunta()
    while true do 
        print("Ingresa tu numero: ")
        local input = io.read("*l"):match("^%s*(.-)%s*$")
        local number = tonumber(input)

        if number and number >= 0 and number <= 20 and number == math.floor(number) then
            return number
        else
            print("Ingresa un numero entero positivo valido. Intenta de nuevo.")
        end
    end
end

local function operacion(number)
    local resultado = 1

    if number == 0 or number == 1 then
        return 1
    else
        for i = 2, number do
            resultado = i * resultado
        end
    end

    return resultado
end

while true do
    local number = pregunta()
    local factorial = operacion(number)
    
    print("El factorial de " .. number .. " es: " .. factorial)

    print("Deseas sacas el factorial de otro numero? (Responde 'y' o 'n' ): ")
    local respuesta = string.lower(io.read("*l"))

    if respuesta == "y" then

    elseif respuesta == "n" then
        print("Adios!")
        break
    else
        print("Ingresa un input valido")
    end
end