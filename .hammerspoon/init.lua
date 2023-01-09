local application = require("hs.application")
-- local osascript = require("hs.osascript")

local menu = hs.menubar.new()

-- local function setDirectMon(path, status)
--   local file = io.open(path, "r")
--   local data = file:read("*a")
--   file:close()
--   menu:setTitle(status)
--   menu:setTooltip("DM Toggle")
--   hs.osascript.applescript([[display dialog "]] .. path .. [["]])
--   hs.osascript.applescript(data)
-- end

local function setDirectOn()
  local file = io.open("/Users/dylan/Dev/Scripts/Mac automation/direct_monitor/direct_on.applescript", "r")
  local data = file:read("*a")
  file:close()
  menu:setTitle("DM is on")
  menu:setTooltip("DM Toggle")
  hs.osascript.applescript(data)
end

local function setDirectOff()
  local file = io.open("/Users/dylan/Dev/Scripts/Mac automation/direct_monitor/direct_off.applescript", "r")
  local data = file:read("*a")
  file:close()
  menu:setTitle("DM is Off")
  menu:setTooltip("Turn off direct to monitor")
  hs.osascript.applescript(data)
end

local function enableMenu()
  local onFile = "/Users/dylan/Dev/Scripts/Mac automation/direct_monitor/direct_on.applescript"
  local offFile = "/Users/dylan/Dev/Scripts/Mac automation/direct_monitor/direct_off.applescript"

  menu:setTitle("|||")
  menu:setTooltip("DM")
  menu:setMenu({
    { title = "Direct Monitor On", fn = setDirectOn, },
    { title = "Direct Monitor Off", fn = setDirectOff },
  })
end

enableMenu()
