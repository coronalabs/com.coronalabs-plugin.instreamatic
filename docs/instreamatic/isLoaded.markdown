# instreamatic.isLoaded()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic, isLoaded
> __See also__          [instreamatic.show()][plugin.instreamatic.show]
>						[instreamatic.*][plugin.instreamatic]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Checks to see if an audio interstitial is loaded and ready to be displayed.


## Syntax

	instreamatic.isLoaded()


## Example

``````lua
local instreamatic = require( "plugin.instreamatic" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
		-- Load an Instreamatic interstitial
		instreamatic.load()
    end
end

-- Initialize the Instreamatic plugin
instreamatic.init( adListener, { siteId=YOUR_SITE_ID } )

-- Sometime later, check if an ad is loaded
local isAdLoaded = instreamatic.isLoaded()
print( isAdLoaded )
``````
