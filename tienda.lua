local inventario = {
}

local function agregarProducto()
    print("Ingresa el nombre del producto que quieres añadir: ")
    local nombre = io.read("*l")

    print("Ingresa el precio del prudcto: ")
    local precio = io.read("*n")
    local _ = io.read("*l")

    print("Cuantas quieres en stock?")
    local stock = io.read("*n")
    _ = io.read("*l")

    if inventario[nombre] then
        print("El producto ya existe en el inventario.")
    else
        inventario[nombre] = {
            precio = precio,
            stock = stock
        }
    end
end

local function actualizarStock()
    print("Ingresa el nombre del producto a restockear: ")
    local nombre = io.read("*l")

    local producto = inventario[nombre]

    if producto then
        print("Hay " .. producto.stock .. " en stock de ese item. Ingresa la cantidad a restockear: ")
        local suma = io.read("*n")
        _ = io.read("*l")

        producto.stock  = suma + producto.stock
        print("Se han restockeado: " .. suma .. "al producto " .. nombre .. ". Ahora hay: " .. producto.stock .. " en stock")
    else
        print("No existe ese item en el inventario")
    end
end

local function valorInventario()
    print("El valor monetario de todo el inventario es: ")

    local total = 0
    for _, datos in pairs(inventario) do
        local resultado = datos.precio * datos.stock
        total = total + resultado
    end

    if total == 0 then
        print("No hay items disponibles en el inventario. El valor del inventario es: " .. total)
    else
        print("El valor monetario del inventario es: $" .. total)
    end
end

while true do
    print("Menu de gestion de inventario: ")
    print("1: Agregar item + stock + precio")
    print("2: Restockear item")
    print("3: Mostrar el valor total del inventario")
    print("4: Salir del menu")

    print("Escribe el numero: ")
    local opcion = io.read("*n")
    local _ = io.read("*l")

    if opcion == 1 then
        agregarProducto()
    elseif opcion == 2 then
        actualizarStock()
    elseif opcion == 3 then
        valorInventario()
    elseif opcion == 4 then
        print("Adios!")
        break
    else
        print("Ingrese una opcion valida")
    end
end

-- 15/07/2025