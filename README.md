PowerShell Collector for Ducksboard
==================

If you're running a home lab and want a Ducksboard dashboard [such as mine](https://public.ducksboard.com/ghKNTfxs_C-psVCY9iue/), this project might be of some use to you.

![](https://github.com/WahlNetwork/ducksboard-homelab/blob/screenshots/ducksboard-dashboard.jpg)

I'm going to assume that you've already made a dashboard on Ducksboard, have made some widgets, and understand the basics of making POST calls to an API via PowerShell 3.0 or higher.

The basic steps:

1. You can view a sample [creds.ps1](https://github.com/WahlNetwork/ducksboard-homelab/blob/21abfeab1b2e9e6a3c9c6b0b02b9a248107ddfc8/creds.ps1) file for your script. Fill in the fields marked with three !!! marks. Place it somewhere safe since the passwords are only encrypted in memory - someone can still open the file and read your creds.
3. Run the collector.ps1 script. It spawns a job for each type of collection. Each job pulls credentials from the creds.ps1 file.
