local frutas = require("modules.frutas")

table.insert(frutas, "tomate")

table.remove(frutas, 1)

for _, fruta in ipairs(frutas) do
    print(fruta)
end