
# instreamatic.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic, init
> __See also__          [instreamatic.show()][plugin.instreamatic.show]
>						[instreamatic.*][plugin.instreamatic]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

`instreamatic.init()` initializes the Instreamatic plugin.

Once initialized, you can show an audio interstitial using [instreamatic.show()][plugin.instreamatic.show], assuming an ad is ready for display. You can check for ad availability using [instreamatic.isLoaded()][plugin.instreamatic.isLoaded].

<div class="guide-notebox">
<div class="notebox-title">Note</div>

This call requires a site&nbsp;ID which can be obtained from the [Instreamatic portal](http://instreamatic.com/publishers).

</div>


## Syntax

	instreamatic.init( adListener, params )

##### adListener ~^(required)^~
_[Listener][api.type.Listener]._ Listener function that will receive [adsRequest][plugin.instreamatic.event.adsRequest] events.

##### params ~^(required)^~
_[Table][api.type.Table]._ Table containing Instreamatic initialization values &mdash; see the next section for details.


## Parameter Reference

The `params` table includes the following parameters for the Instreamatic initialization.

##### siteId ~^(required)^~
_[Number][api.type.Number]._ Your numeric site&nbsp;ID from the [Instreamatic portal](https://www.instreamatic.com/publishers).

##### testMode ~^(optional)^~
_[Boolean][api.type.Boolean]._ Setting this to `true` activates test mode which can be used during developement. Default is `false`.


## Example

``````lua
local instreamatic = require( "plugin.instreamatic" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
    end
end

-- Initialize the Instreamatic plugin
instreamatic.init( adListener, { siteId=YOUR_SITE_ID, testMode=true } )
``````
