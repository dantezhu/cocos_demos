local M = class("TestScrollView", neon.View)


function M:onCreate()
    
end

function M:createRoot()
    local node = cc.CSLoader:createNode("ScrollViewScene.csb")
    
    neon_utils.fit_full_screen(node)

    return node
end

return M
