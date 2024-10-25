local BaseCrop = Class:extend("BaseCrop")

function BaseCrop:new(tx, ty, t, s, f)
    self.tileX, self.tileY = tx or 0, ty or 0
    self.growthTime = t or 2 -- in game days
    self.growthStage = s or 1
    self.finishedState = f or 4
    self.watered = false
end

function BaseCrop:draw()
    local lastColor = {love.graphics.getColor()}
    love.graphics.setColor(1 - self.growthStage / self.finishedState, 1, 0)
    love.graphics.rectangle("fill", self.tileX * 32, self.tileY * 32, 32, 32)
    love.graphics.setColor(lastColor)
end

return BaseCrop