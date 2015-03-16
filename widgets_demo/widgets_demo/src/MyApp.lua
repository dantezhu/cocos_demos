require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.DEBUG)

    self:registerView(require("views.TestPageView"))
end

return M
