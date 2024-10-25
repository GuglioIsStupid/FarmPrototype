local path = ... .. "."

require(path .. "BaseClasses")
require(path .. "Data")

require(path .. "States")

Game:SwitchState(TestState)