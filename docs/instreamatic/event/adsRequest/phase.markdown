# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.instreamatic.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Instreamatic, adsRequest, phase
> __See also__			[adsRequest][plugin.instreamatic.event.adsRequest]
>						[instreamatic.*][plugin.instreamatic]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String][api.type.String] value indicating the phase of the [adsRequest][plugin.instreamatic.event.adsRequest] event. Possible values include:

* `"init"` &mdash; Indicates that the Instreamatic plugin was initialized successfully.

* `"displayed"` &mdash; Indicates that an audio interstitial was displayed. 

* `"closed"` &mdash; Indicates that an audio interstitial was closed. 

* `"loaded"` &mdash; Indicates that an audio interstitial was loaded and is ready for display. 

* `"failed"` &mdash; Indicates that an error occurred, in which case [event.response][plugin.instreamatic.event.adsRequest.response] provides additional context.

* `"clicked"` &mdash; Indicates that the audio interstitial was tapped by the user.

* `"playbackEnded"` &mdash; Indicates that the user listened to the audio interstitial until the end of the stream.
