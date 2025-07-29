local opciones = {"piedra", "papel", "tijeras"}

local vence = {piedra = "tijeras", tijeras = "papel", papel = "piedra"}

local scoreEmpate = 0
local scoreGanadas = 0
local scorePerdidas = 0

local function eleccionPrograma()
    math.randomseed(os.time())

    local i = math.random(1, #opciones)

    return opciones[i]
end

local function eleccionJugador()
    while true do
        local input = print("Bienvenido al famoso juego: Piedra, papel o tijeras. Por favor elige tu opcion: ")
        input = string.lower(io.read("*l"))

        for _, opt in ipairs(opciones) do
            if input == opt then
                return input
            end
        end

        print("Ingresa un input valido")
    end
end

local function ganador(programa, jugador)
    if programa == jugador then
        return "Empate!", 0, 0, 1
    elseif vence[programa] == jugador then
        return "Perdiste!", 0, 1, 0
    else
        return "Ganaste!", 1, 0, 0
    end
end

while true do
    local jugador = eleccionJugador()
    local programa = eleccionPrograma()

    print("Escogiste: " .. jugador .. " y el programa eligio: " .. programa)

    local resultado, sumJugador, sumPrograma, sumEmpate = ganador(programa, jugador)
    print(resultado)

    scoreEmpate = sumEmpate + scoreEmpate
    scoreGanadas = sumJugador + scoreGanadas
    scorePerdidas = sumPrograma + scorePerdidas

    print(string.format("El resultado ahora es: %d %d %d ", scoreGanadas, scorePerdidas, scoreEmpate))

    while true do
        print("Desea jugar otra partida? Si es asi escriba 'y' en caso de querer salir escriba 'n'")
        local respuesta = string.lower(io.read("*l"))

        if respuesta == "y" then
            break
        elseif respuesta == "n" then
            print("Adios!")
            return
        else
            print("Igresa un input valido")
        end
    end
end