require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Logger.WARN)

    self:registerView(require("views.MainView"))

end

function M:onRun(params)
    self:renderView("MainView")
end

return M
