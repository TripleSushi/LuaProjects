local agenda = {
}

local function agregarContacto()
    print("Ingrese el primer nombre de la persona que quiera agregar: ")
    local nombre = io.read("*l")

    print("Ingrese el numero de la persona que acaba de ingresar: ")
    local numero = io.read("*n")
    local _ = io.read("*l")

    if agenda[nombre] then
        print("La persona que usted ingreso ya esta en la agenda, por favor agregue a alguien nuevo. ")
    else
        agenda[nombre] = numero
        print("Contacto agregado.")
    end
end

local function buscarContacto()
    print("Ingrese el nombre de la persona: ")
    local nombre = io.read("*l")

    local numero = agenda[nombre]

    if numero then
        print("El numero de contacto de " .. nombre .. " es: " .. numero)
    else
        print("No existe ese contacto.")
    end
end

local function mostrarLista()
    local contador = 0
    print("Lista de contactos: ")

    for nombre, numero in pairs(agenda) do
        print(nombre .. ": " .. numero)
        contador = contador + 1
    end

    if contador == 0 then
        print("La agenda esta vacia. ")
    end
end

while true do
    print("Menu de agenda de contactos: ")
    print("1: Agregar contacto")
    print("2: Buscar un contacto en la lista")
    print("3: Mostrar lista de contactos")
    print("4: Salir del menu")

    print("Escribe el numero: ")
    local opcion = io.read("*n")
    local _ = io.read("*l")

    if opcion == 1 then
        agregarContacto()
    elseif opcion == 2 then
        buscarContacto()
    elseif opcion == 3 then
        mostrarLista()
    elseif opcion == 4 then
        print("Adios!")
        break
    else
        print("Ingrese una opcion valida")
    end
end

-- 15/07/2025