local M = class("TestScrollView", neon.View)


function M:onCreate()
    
end

function M:createRoot()
    local node = cc.CSLoader:createNode("ScrollViewScene.csb")
    
    cckit.fitScreen(node)

    return node
end

return M
