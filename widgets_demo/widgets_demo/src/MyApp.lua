require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.DEBUG)

    self:registerView(require("views.TestPageView"))
    self:registerView(require("views.TestScrollView"))
    self:registerView(require("views.TestListView"))

    -- self:showView("TestPageView")
    -- self:showView("TestScrollView")
    self:showView("TestListView")
end

return M
