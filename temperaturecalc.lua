local function calc(temp, tipo)
    if tipo == "c" then
        return (temp - 32) * 5 / 9
    elseif tipo == "f" then
        return (temp * (9 / 5)) + 32
    end
end

local function pregunta()
    print("Si desea convertir de Fahrenheit a Celsius escriba 'C' de lo contrario escriba 'F': ")
    local input = string.lower(io.read("*l"))

    if input == "f" or input == "c" then
        print("Ingresa la temperatura a convertir: ")
        local temp = tonumber(io.read("*l"))

        if temp then
            local resultado = calc(temp, input)
            if input == "f" then
                print(string.format("%.2f°C son %.2f°F", temp, resultado))
            elseif input == "c" then
                print(string.format("%.2f°F son %.2f°C", temp, resultado))
            end
        else
            print("Ingresa un input valido")
            return false
        end
    else
        print("Ingresa un input valido")
        return false
    end
    return true
end

local function main()
    while true do
        if pregunta() then
            print("Desea convertir otra temperatura? (Responde 'y' o 'n'): ")
            local respuesta = string.lower(io.read("*l"))
            if respuesta == "n" then
                print("Adios!")
                break
            elseif respuesta ~= "y" then
                print("Ingresa un input valido")
            end
        end
    end
end

main()