-- Instreamatic plugin

local Library = require "CoronaLibrary"

-- Create library
local lib = Library:new{ name="plugin.instreamatic", publisherId="com.coronalabs" }

-------------------------------------------------------------------------------
-- BEGIN
-------------------------------------------------------------------------------

-- This sample implements the following Lua:
-- 
--    local PLUGIN_NAME = require "plugin_PLUGIN_NAME"
--    PLUGIN_NAME:showPopup()
--    

local function showWarning(functionName)
    print( functionName .. " WARNING: The Instreamatic plugin is only supported on Android & iOS devices. Please build for device");
end

function lib.init()
    showWarning("instreamatic.init()")
end

function lib.load()
    showWarning("instreamatic.load()")
end

function lib.isLoaded()
    showWarning("instreamatic.isLoaded()")
end

function lib.show()
    showWarning("instreamatic.show()")
end

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------

-- Return an instance
return lib
