local numeros = {2, 4, 6, 8 , 10, 12, 14, 16, 18, 20}

local function bsearch(table, target)
    local inicio, fin = 1, #table

    while inicio <= fin do

        local medio = math.floor((inicio + fin) / 2)

        if table[medio] == target then
            print(target .. " esta en la posicion " .. medio)
            return medio
        elseif table[medio] < target then
            inicio = medio + 1
        elseif table[medio] > target then
            fin = medio - 1
        else
            return nil
        end
    end
end


print("Ingresa un numero par del 2 al 20 para saber su posicion dentro de la tabla: ")
local input = io.read("*l")
local target = tonumber(input)

if target then
    local posicion = bsearch(numeros, target)
    if posicion then
        print("El numero " .. target .. " esta en la posicion " .. posicion)
    else
        print("El numero " .. target .. " no se encuentra en la tabla")
    end
else
    print("Ingresa un input valido")
end