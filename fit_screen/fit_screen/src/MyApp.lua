require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.WARN)

    self:registerView(require("views.MainView"))

    self:showView("MainView")
end

return M
