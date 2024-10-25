local TestState = State:extend("TestState")

function TestState:new()
    State.new(self)

    local carrot = CarrotCrop()
    self:add(carrot)
end

return TestState