local persona = {}

persona.__index = persona

function persona.new(nombre, edad)
    local self = setmetatable({}, persona)
    self.nombre = nombre
    self.edad = edad

    return self
end

function persona:saludar()
    print("Hola! Mi nombre es " .. self.nombre .. " y tengo " .. self.edad)
end

local juan = persona.new("Juan", 20)

juan:saludar()