require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.WARN)

    self:registerView(require("views.MainView"))
end

function M:onEnterTransitionFinish()
    self:showView("MainView")
end

return M
