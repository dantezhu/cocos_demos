local M = class("TestPageView", neon.View)

function M:onCreate()
    neon.loge("onCreate %s", self.__cname)
    
    local pageViewMain = cckit.seekNodeByName(self.root, 'pageview_main')
    pageViewMain:addEventListener(function (sender, eventType)
            neon.logd("eventType: %s, page: %s", getmetatable(eventType), sender:getCurPageIndex())
    end)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("PageViewScene.csb")
    -- local node = cc.CSLoader:createNode("PanelScene.csb")
    
    cckit.fitFullScreen(node)

    return node
end

function M:onRemove()
    neon.loge("onRemove %s", self.__cname)
end

return M
