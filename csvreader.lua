local function leer(archivo)
    local encabezados = {}
    local filas = {}
    local primero = true
    local contador = 0
    local sumaPersonas = 0

    for linea in io.lines(archivo) do
        if primero then
            local i = 1

            for campo in linea:gmatch("[^,]+") do
                encabezados[i] = campo

                i = i + 1
            end

            primero = false
        else
            local fila = {}
            local i = 1

            for campo in linea:gmatch("[^,]+") do
                if encabezados[i] then
                    fila[encabezados[i]] = campo
                end

                i = i + 1
            end

            table.insert(filas, fila)

            local edad = tonumber(fila["edad"])
            if edad then
                sumaPersonas = sumaPersonas + edad
                contador = contador + 1
            end
        end
    end

    local promedio = 0
    if contador > 0 then
        promedio = sumaPersonas / contador
    end

    return filas, promedio
end


local archivo = "misc/archivo.csv"

local filas, promedio = leer(archivo)

for i, fila in ipairs(filas) do
    print(string.format("Fila %d: nombre = %s edad = %s", i, fila["nombre"], fila["edad"]))
end
print("Promedio de edades: " .. promedio)