local M = class("MainView", neon.View)

function M:onCreate()
    neon.loge("onCreate %s", self.__cname)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("Main.csb")
    
    -- 真实设备分辨率只能这样获取
    -- getWinSize 之类在调用完 setDesignResolutionSize 之后就完全不对了
    local frameSize = cc.Director:getInstance():getOpenGLView():getFrameSize()
    
    -- 务必计算比例，因为是 FIX_WIDTH，所以以设计WIDTH为准算出HEIGHT
    node:setContentSize(cc.size(768, frameSize.height * 768 / frameSize.width))

    ccui.Helper:doLayout(node)

    return node
end

function M:onRemove()
    neon.loge("onRemove %s", self.__cname)
end

return M
