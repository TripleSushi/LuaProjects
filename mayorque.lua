local continuar = true

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

local function pregunta()
    print("Desea ingresar otros 3 nuemros? Escriba 'Y' para si o 'N' para salir: ")
    local respuesta = io.read("*l")
    return respuesta
end

local function mayorque()
   local x = numeroValido("Ingresa el valor de tu primer numero: ")
   local y = numeroValido("Ingresa el valor de tu segundo numero: ")
   local z = numeroValido("Ingresa el valor de tu tercer numero: ")

   print("El numero mas grande de los que ingresaste es: " .. math.max(x,y,z))
end

while continuar == true do
    mayorque()

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