local tabla = {}

math.randomseed(os.time())

for i = 1, 10 do
    table.insert(tabla, math.random(1, 40))
end

for i = 1, #table - 1 do
    for j = 1, #tabla - i do
        if tabla[j] > tabla[j + 1] then
            local temp = table[j]

            tabla[j] = tabla[j + 1]
            tabla[j + 1] = temp
        end
    end
end

for _, v in ipairs(tabla) do
    print(v)
end