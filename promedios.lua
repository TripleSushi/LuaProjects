local alumnos = {}

local function alumno()
    while true do
        print("Ingresa el primer nombre del alumno que desea saber su promedio: ")
        local nombre = io.read("*l")

        if nombre then
            return nombre
        else
            print("Ingresa un input valido.")
        end
    end
end

local function parcial(calificacion)
    while true do
        print("Introduzca la calificacion del " .. calificacion .. " parcial")
        local nota = tonumber(io.read("*l"))

        if nota and nota <= 10 and nota >= 0 then
            return nota
        else
            print("La calificacion debe de ser menor o igual a 10 y mayor o igual a 0")
        end
    end
end

local function pregunta()
    local estudiante = alumno()
    local p1 = parcial("primer")
    local p2 = parcial("segundo")
    local p3 = parcial("tercer")

    local resultado = (p1 + p2 + p3) / 3

    return estudiante, resultado
end

print("Bienvenido al programa para revisar que alumno aprueba y cual no.")

local continuar = true

while continuar do
    local estudiante, resultado = pregunta()

    table.insert(alumnos, {nombre = estudiante, nota = resultado})

    while true do
        print("Desea ingresar otro alumno y calificacion? Escriba 'y' si es asi de lo contrario escriba 'n'")
        local respuesta = io.read("*l")

        if respuesta == "y" then
            break
        elseif respuesta == "n" then
            continuar = false
            break
        end
    end
end

if #alumnos > 0 then
    local suma = 0
    local aprobados = {}
    local reprobados = {}

    for _, estudiante in ipairs(alumnos) do
        suma = suma + estudiante.nota
        if estudiante.nota > 5 then
            table.insert(aprobados, estudiante)
        else
            table.insert(reprobados, estudiante)
        end
    end

    local promedio = suma / #alumnos

    print(string.format("Total de estudiantes en la lista: %d", #alumnos))
    print(string.format("Total de aprobados: %d ", #aprobados))
    print(string.format("Total de personas reprobadas: %.2f", #reprobados))
    print(string.format("Promedio general de los estudiantes ingresados: ", promedio))

    print("Lista de alumnos reprobados: ")
    for _, rep in ipairs(reprobados) do
        if rep > 0 then
            print("- " .. rep.nombre)
        else
            print("No hubo alumnos reprobados.")
        end
    end
    print("Lista de alumnos aprobados: ")
    for _, aprob in ipairs(aprobados) do
        if aprob > 0 then
            print("- " .. aprob.nombre)
        else
            print("No hubo alumnos aprobados")
        end
    end
else
    print("No hay alumnos en la lista")
end
