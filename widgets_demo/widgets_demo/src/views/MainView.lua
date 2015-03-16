local M = class("MainView", neon.View)

function M:onCreate()
    neon.loge("onCreate %s", self.__cname)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("PageViewScene.csb")
    
    neon_utils.fit_full_screen(node)

    return node
end

function M:onRemove()
    neon.loge("onRemove %s", self.__cname)
end

return M
