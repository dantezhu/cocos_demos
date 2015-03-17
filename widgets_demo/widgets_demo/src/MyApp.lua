require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.DEBUG)

    self:registerView(require("views.TestPageView"))
end

function M:onEnterTransitionFinish()
    self:showView("TestPageView")
end

return M
