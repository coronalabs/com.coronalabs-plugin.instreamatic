# instreamatic.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic, show
> __See also__          [instreamatic.isLoaded()][plugin.instreamatic.isLoaded]
>						[instreamatic.*][plugin.instreamatic]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Shows an Instreamatic audio interstitial, assuming an ad is ready for display. You can check for ad availability using [instreamatic.isLoaded()][plugin.instreamatic.isLoaded].


## Syntax

	instreamatic.show()

## Example

``````lua
local instreamatic = require( "plugin.instreamatic" )

local function adListener( event )
	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
		-- Load an Instreamatic interstitial
        instreamatic.load()

    elseif ( event.phase == "loaded" ) then
		-- Show the interstitial
		instreamatic.show()
    end
end

-- Initialize the Instreamatic plugin
instreamatic.init( adListener, { siteId=YOUR_SITE_ID } )
``````
