# instreamatic.load()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic, load
> __See also__          [instreamatic.show()][plugin.instreamatic.show]
>						[instreamatic.*][plugin.instreamatic]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Loads an Instreamatic audio interstitial.


## Syntax

	instreamatic.load()


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
``````
