require("Constants")


local M = class("MyApp", neon.Neon)
local device = require("cocos.framework.device")

function M:onCreate()
    neon.logger:setLevel(neon.logging.DEBUG)

    local function callback(src)
        neon.logger:debug("callback src: %s", src)
    end

    local function onStateChange(state)
        -- ios/android 按下home键切到后台再回来，状态顺序为: inactive enterback enterfore active
        neon.logger:debug("state callback: %s", state)
    end

    neon.logger:debug("platform: %s", device.platform)

    if device.platform == 'ios' then
        local luaoc = require('cocos.cocos2d.luaoc')
        luaoc.callStaticMethod("AppController", "doSomething", {callback = callback})
        luaoc.callStaticMethod("AppController", "registerStateChangeCallback", {callback = onStateChange})
    elseif device.platform == 'android' then
        local luaj = require "cocos.cocos2d.luaj"
        
        local sigs = "(I)V"
        local args = {onStateChange}
        local ok, ret = luaj.callStaticMethod("org.cocos2dx.lua.AppActivity", "registerStateChangeCallback", args, sigs)
    end

    self:registerView(require("views.MainView"))
end

function M:onRun(params)
    self:renderView("MainView")
end

return M
