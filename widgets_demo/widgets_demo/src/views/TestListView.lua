local M = class("TestListView", neon.View)


function M:onCreate()
    local function listViewEvent(sender, eventType)
        neon.logger:debug("eventType: %s, child index: %s", eventType, sender:getCurSelectedIndex())
        if eventType == ccui.ListViewEventType.ONSELECTEDITEM_START then
            print("select child index = ",sender:getCurSelectedIndex())
        end
    end

    local function scrollViewEvent(sender, evenType)
        neon.logger:debug("scrollViewEvent eventType: %s", eventType)
        if evenType == ccui.ScrollviewEventType.scrollToBottom then
            print("SCROLL_TO_BOTTOM")
        elseif evenType ==  ccui.ScrollviewEventType.scrollToTop then
            print("SCROLL_TO_TOP")
        end
    end

    
    local listView = cckit.seekNodeByName(self.root, "ListView_1")
    listView:addEventListener(listViewEvent)
    listView:addScrollViewEventListener(scrollViewEvent)
end

function M:createRoot()
    local node = cc.CSLoader:createNode("ListViewScene.csb")
    
    cckit.fillScreen(node)

    return node
end

return M
