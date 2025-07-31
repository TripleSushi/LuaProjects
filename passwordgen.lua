local abecedario = {}

for i = 97, 122 do
  table.insert(abecedario, string.char(i))
end

local function passwordGen(longitud)
    math.randomseed(os.time())
    local contrasena = ""

    for i = 1, longitud do
        local caracter = math.random(1, #abecedario)
        contrasena = contrasena .. abecedario[caracter]
    end
    return contrasena
end

local function pregunta()
    while true do
        print("Ingresa la longitud de la contrasena: ")
        local respuesta = tonumber(io.read("*l"))
    
        if respuesta and respuesta > 0 then
            return respuesta
        elseif respuesta and respuesta <= 0 then
            print("ingresa un numero mayor o igual a 1 ")
        else
            print("Ingresa un input valido")
        end
    end
end

print("Bienvenido al generador de contrasena! Por favor ingresa un rango")

while true do
    local longitud = pregunta()
    local contrasena = passwordGen(longitud)

    print("La contrasena generada es: " .. contrasena)

    while true do
        print("Desea generar otra contrasena? Escriba 'y' para si de lo contrario escriba 'n' ")
        local respuesta = string.lower(io.read("*l"))

        if respuesta == "y" then
            break
        elseif respuesta == 'n' then
            print("Adios!")
            return
        else
            print("Ingresa un input valido")
        end
    end
end