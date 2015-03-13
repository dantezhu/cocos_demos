require("Constants")


local M = neon.class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.WARN)

    self:registerView(require("views.MainView"))
end

return M
