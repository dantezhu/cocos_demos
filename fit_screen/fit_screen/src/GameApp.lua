require("Constants")


local M = neon.class("GameApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.WARN)

    self:registerView(require("views.GameView"))
end

return M
