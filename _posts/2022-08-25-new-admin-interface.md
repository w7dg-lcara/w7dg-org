---
title: New Admin Interface
layout: post
---

The new admin interface is mostly working!

Users can add and edit the site from [/admin](/admin), then automatically submit their changes for review via [/publish](/publish). Finally, once the PR merges, the [live site](https://live.w7dg.net) is automatically rebuilt via a webhook call. All frictionless! 🤞

Edit: the first publish didn't quite go as planned... we were never resetting the REBUILDER global, so it would only build from a webhook once per process restart.

Edit2: multiple edits and publish rounds seem to be going through smoothly now!

Edit3: adding a 2 second delay on the save path make it much more reliable when saving the page. Hopefully no spurious errors when saving posts now!
