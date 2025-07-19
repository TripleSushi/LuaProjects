
local continuar = true


while continuar == true do

    print("Hola, usuario. Por favor escriba un numero: ")
    local numero = io.read("*n")
    local _ = io.read("*l")

    print("Ingresaste: " .. numero .. "\nDeseas ingresar otro numero? Si es asi escribe 'Yes' sino escribe 'No' para salir. ")
    local respuesta = io.read("*l")

    if respuesta == "No" then
        continuar = false

        elseif respuesta == "Yes" then
            continuar = true
    else
        print("Input invalido")
        continuar = false
    end
end
