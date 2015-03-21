local M = class("MainView", neon.View)

function M:onCreate()
    neon.logger:error("onCreate %s", self.__cname)
    local layer = cc.LayerColor:create(cc.c4b(0,0,255,255))
    self.root:addChild(layer)

    -- neon.logger:error("root.contentSize: %s, %s", self.root:getContentSize().width, self.root:getContentSize().height)
    -- neon.logger:error("layer.contentSize: %s, %s", layer:getContentSize().width, layer:getContentSize().height)
end

function M:onRemove()
    neon.logger:error("onRemove %s", self.__cname)
end

return M
