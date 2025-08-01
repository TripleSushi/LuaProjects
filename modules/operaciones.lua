local operaciones = {}

local function suma(a, b)
    return a + b
end

local function resta(a, b)
    return a - b
end

local function multiplicacion(a, b)
    return a * b
end

local function exponents(a, b)
    return a^b
end

operaciones.suma = suma
operaciones.resta = resta
operaciones.multiplicacion = multiplicacion
operaciones.exponents = exponents

return operaciones