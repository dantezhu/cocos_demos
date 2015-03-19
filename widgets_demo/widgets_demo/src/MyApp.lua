require("Constants")


local M = class("MyApp", neon.Neon)

function M:onCreate()
    neon.logger:setLevel(neon.Log.DEBUG)

    self:registerView(require("views.TestPageView"))
    self:registerView(require("views.TestScrollView"))
    self:registerView(require("views.TestListView"))

end

function M:onRun(params)
    -- self:renderView("TestPageView")
    -- self:renderView("TestScrollView")
    self:renderView("TestListView")
end

return M
