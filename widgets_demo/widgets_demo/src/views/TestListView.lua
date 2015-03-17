local M = class("TestListView", neon.View)


function M:onCreate()
    local function listViewEvent(sender, eventType)
        neon.logd("eventType: %s, child index: %s", eventType, sender:getCurSelectedIndex())
        if eventType == ccui.ListViewEventType.ONSELECTEDITEM_START then
            print("select child index = ",sender:getCurSelectedIndex())
        end
    end

    local function scrollViewEvent(sender, evenType)
        neon.logd("scrollViewEvent eventType: %s", eventType)
        if evenType == ccui.ScrollviewEventType.scrollToBottom then
            print("SCROLL_TO_BOTTOM")
        elseif evenType ==  ccui.ScrollviewEventType.scrollToTop then
            print("SCROLL_TO_TOP")
        end
    end

    
    local listView = neon_utils.seekNodeByName(self.root, "ListView_1")
    listView:addEventListener(listViewEvent)
    listView:addScrollViewEventListener(scrollViewEvent)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("ListViewScene.csb")
    
    neon_utils.fit_full_screen(node)

    return node
end

return M
