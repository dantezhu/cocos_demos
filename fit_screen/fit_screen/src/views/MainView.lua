local M = class("MainView", neon.View)

function M:onCreate()
    neon.logger:error("onCreate %s", self.__cname)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("Main.csb")
    
    cckit.fillScreen(node)

    return node
end

function M:onRemove()
    neon.logger:error("onRemove %s", self.__cname)
end

return M
