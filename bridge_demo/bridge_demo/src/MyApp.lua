require("Constants")


local M = class("MyApp", neon.Neon)
local luaoc = require('cocos.cocos2d.luaoc')
local device = require("cocos.framework.device")

function M:onCreate()
    neon.logger:setLevel(neon.Log.DEBUG)

    local function callback(src)
        neon.logd("callback src: %s", src)
    end

    if device.platform == 'ios' then
        luaoc.callStaticMethod("AppController", "doSomething", {callback = callback})
        luaoc.callStaticMethod("AppController", "registerStateChangeCallback", {callback = function (state)
            -- 按下home键切到后台再回来，状态顺序为: inactive enterback enterfore active
            neon.logd("state callback: %s", state)
        end})
    end

    self:registerView(require("views.MainView"))
    self:showView("MainView")
end

return M
