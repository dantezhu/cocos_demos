local M = class("MainView", neon.View)

function M:onCreate()
    local device = require("device")
    neon.loge("onCreate %s", self.__cname)
    neon.loge("platform: %s", device.platform)
    local layer = cc.LayerColor:create(cc.c4b(0,0,255,255))
    self.root:addChild(layer)

    neon.loge("root.contentSize: %s, %s", self.root:getContentSize().width, self.root:getContentSize().height)
    neon.loge("layer.contentSize: %s, %s", layer:getContentSize().width, layer:getContentSize().height)

    local function callback(src)
        neon.logd("callback src: %s", src)
    end

    if device.platform == 'ios' then
        local luaoc = require('cocos.cocos2d.luaoc')
        luaoc.callStaticMethod("RootViewController", "doSomething", {callback = callback})
    end
end

function M:onRemove()
    neon.loge("onRemove %s", self.__cname)
end

return M
