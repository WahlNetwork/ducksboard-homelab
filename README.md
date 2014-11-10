PowerShell Collector for Ducksboard
==================

I intend this to be used with their free API and GitHub edition account for a home lab dashboard, [such as mine](https://public.ducksboard.com/ghKNTfxs_C-psVCY9iue/). It's a work in progress in my spare time. This project assumes you've already made a dashboard on Ducksboard and are looking for code examples to get it running.

1. You can view a sample [creds.ps1](https://github.com/WahlNetwork/ducksboard-homelab/blob/21abfeab1b2e9e6a3c9c6b0b02b9a248107ddfc8/creds.ps1) file for your script. Fill in the fields marked with three !!! marks.
2. Open the collector.ps1 file and enter the path to your script folder.
3. Run the collector.ps1 script. It spawns a job for each type of collection.
