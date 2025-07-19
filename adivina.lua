math.randomseed(os.time())
local adivina = math.random(1, 100)

while true do
    print("\nBienvenido a 'Adivina el numero'\n\n-El programa eligira un numero aleatorio entre el 1 y el 100.\n-Ingresa un numero y el programa te dira que tan bajo o alto esta!")
    local numero = tonumber(io.read("*l"))

    if numero == nil then
        print("\nIngresa un input valido.")
    else
        if adivina > numero then
            print("Mas alto")
        elseif adivina < numero then
            print("Mas bajo")
        elseif numero > 100 then
            print("Solo numeros abajo o igual a 100")
        elseif adivina == numero then
            print("Felicidades, acertaste!\nEl numero era: " .. adivina)
        break
        end
    end
end

-- 17/07/2025