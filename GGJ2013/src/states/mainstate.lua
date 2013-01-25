-- intro

require("core/gamestate")
require("core/resources")
require("core/objectgroup")
require("objects/player")

MainState = class("MainState", GameState)

function MainState:__init()
    self.objects = ObjectGroup()

    self.objects:add(Player())
end

function MainState:draw()
    love.graphics.setBackgroundColor(17, 17, 17)
    love.graphics.setColor(255, 255, 255)

    love.graphics.clear()
    love.graphics.setFont(resources.fonts.normal)
    love.graphics.print("This is the game. Fuck yeah.", 10, 10)

    self.objects:draw()
end

function MainState:update(dt)
    self.objects:update(dt)
end

function MainState:keypressed(k, u)
    if k == "escape" then
        stack:pop()
    end
end