
# instreamatic.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.Library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic
> __Platforms__			Android, iOS
> --------------------- ------------------------------------------------------------------------------------------

## Overview

<div class="float-right" style="max-width: 240px; clear: both;">

![][images.docs.plugin-screenshot-instreamatic]

</div>

[Instreamatic](https://www.instreamatic.com/) provides an ad platform for showing static interstitials with digital audio.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

For iOS, the Instreamatic plugin is only compatible with iOS&nbsp;7.1 and higher.

</div>


## Registration

Before you can use this plugin, you must [register](https://www.instreamatic.com/publishers) with Instreamatic.


## Syntax

	local plugin = require( "plugin.instreamatic" )


## Functions

#### [instreamatic.init()][plugin.instreamatic.init]

#### [instreamatic.load()][plugin.instreamatic.load]

#### [instreamatic.show()][plugin.instreamatic.show]

#### [instreamatic.isLoaded()][plugin.instreamatic.isLoaded]


## Events

#### [adsRequest][plugin.instreamatic.event.adsRequest]


## Project Settings

To use this plugin, add the following entries into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

``````lua
settings =
{
	plugins =
	{
		["plugin.instreamatic"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { iphone=true, android=true }
		},

		["plugin.google.play.services"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { android=true }
		}
	}
}
``````

In addition, please add the appropriate OS version restrictions specified below to prevent your Instreamatic-enabled apps from being installed on incompatible devices:

``````lua
settings =
{
	iphone =
	{
		plist =
		{
			MinimumOSVersion = "7.1"
		}
	},
}
``````

<div class="guide-notebox">
<div class="notebox-title">Note</div>

For Android, the following permissions/features are automatically added when using this plugin:

``````lua
	android =
	{
		usesPermissions =
		{
			"android.permission.INTERNET",
			"android.permission.ACCESS_NETWORK_STATE"
		}
	}
``````

</div>


## Support

* [http://instreamatic.com/](http://instreamatic.com/#contact)
* [Corona Forums](http://forums.coronalabs.com/forum/545-monetization-in-app-purchases-ads-etc/)
