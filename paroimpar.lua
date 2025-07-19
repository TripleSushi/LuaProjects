print("Ingrese un numero: ")

local x = io.read("*n")

local function parEimpar()
    if x % 2 == 0 then
        print("Tu numero es par.")
    else
        print("Tu numero es impar.")
    end
end

parEimpar()