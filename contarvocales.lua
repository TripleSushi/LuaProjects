print("Ingresa tu frase para contar las vocales: ")
local frase = string.lower(io.read("*l"))

local contador = 0

for i = 1, #frase do
    local vocal = frase:sub(i, i)

    if vocal == "a" or vocal == "e" or vocal == "i" or vocal == "o" or vocal == "u" then
        contador = contador + 1
    end
end

print("El total de vocales es: " .. contador)