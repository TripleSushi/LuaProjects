local saldo = 0
local historial = {}


local function depositar(cantidad)
    if cantidad > 0 then
        saldo = saldo + cantidad
        table.insert(historial, {deposito = cantidad})
    else
        print("Introduzca un numero mayor a 0")
        return nil
    end
end

local function retirar(cantidad)
    if cantidad <= 0 then
        print("Introduzca un número mayor a 0")
        return nil
    elseif cantidad > saldo then
        print("No tiene fondos suficientes para retirar")
        return nil
    else
        saldo = saldo - cantidad
        table.insert(historial, {retiro = cantidad})
    end
end

print("-- Bienvenido al simulador de banco simple --\n")

while true do
    print("-- Menu de opciones --")
    print("No. 1: Depositar")
    print("No. 2: Retirar")
    print("No. 3: Consultar saldo")
    print("No. 4: Consultar historial de transacciones")
    print("No. 5: Salir del programa\n")
    local opcion = tonumber(io.read("*l"))

    while true do
        if opcion == 5 then
            print("Adios!")
            return
        elseif opcion == 1 then
            print("Introduzca la cantidad que desea ingresar: ")
            local cantidad = tonumber(io.read("*l"))

            if cantidad then
                depositar(cantidad)
                break
            else
                print("Introduzca un input valido")
            end
        elseif opcion == 2 then
            print("Introduzca la cantidad que desea retirar esa cantidad")
            local cantidad = tonumber(io.read("*l"))

            if cantidad then
                retirar(cantidad)
                break
            else
                print("Introduzca un input valido")
            end
        elseif opcion == 3 then
            print("Su saldo actual es: " .. saldo)
            break
        elseif opcion == 4 then
            local totalDepositado = 0
            local totalRetirado = 0

            for _, transacciones in ipairs(historial) do
                if transacciones.deposito then
                    totalDepositado = totalDepositado + transacciones.deposito
                elseif transacciones.retirar then
                    totalRetirado = totalRetirado + transacciones.retirar
                end
            end

            print("Has depositado: " .. totalDepositado .. " en total.")
            print("Has retirado: " .. totalRetirado .. " en total")
            break
        else
            print("Ingresa un input valido")
            break
        end
    end
end