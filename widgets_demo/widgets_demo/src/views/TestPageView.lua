local M = class("TestPageView", neon.View)

function M:onCreate()
    neon.loge("onCreate %s", self.__cname)
    neon.logd("x: %s, y: %s", 1, 2)
    
    local pageViewMain = neon_utils.seekNodeByName(self.root, 'pageview_main')
    pageViewMain:addEventListener(function (sender, eventType)
            neon.logd("eventType: %d, page: %s", 1, sender:getCurPageIndex())
            -- neon.logd("eventType: %s, page: %s", getmetatable(eventType), sender:getCurPageIndex())
    end)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("PageViewScene.csb")
    -- local node = cc.CSLoader:createNode("PanelScene.csb")
    
    neon_utils.fit_full_screen(node)

    return node
end

function M:onRemove()
    neon.loge("onRemove %s", self.__cname)
end

return M
