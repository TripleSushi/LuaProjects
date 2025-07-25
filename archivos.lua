local numeros = {}

for i = 1, 20 do
    table.insert(numeros, math.random(1,60))
end

local archivo = io.open("misc/numeros.txt", "w+")

if archivo then
    for _, numero in ipairs(numeros) do
        archivo:write(numero .. "\n")
    end

    archivo:seek("set", 0)

    local suma = 0

    for linea in archivo:lines() do
        local numero = tonumber(linea)

        if numero and not linea:match("^%s*$") then
            suma = suma + numero
        else
            print("Linea invalida" .. linea)
        end
    end

    print("El resultado de la suma de todos los numeros dentro del archivo es: " .. suma)
    archivo:close()
else
    print("No se ha podido crear el archivo.")
end

