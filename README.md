# FundManager All TreeFrogTinkerer Custom Quote Servers
This repo / script simply combines all the other custom quote servers into a single csv that is usable with the `<local file`> option in Fund Manager Software.

This script auto-runs in github on the 21st of each month to combine the CPI and I Bonds data.

# To Use
Download the combined FM-CombinedCustomQuoteServer.csv from this repo.

Consult the other repos for ticker usage:
* [I Bond Quote Server](https://github.com/TreeFrogTinkerer/FundManager-QuoteServer-IBonds)
* [US CPI Quote Server](https://github.com/TreeFrogTinkerer/FundManager-QuoteServer-US-CPI)

# Scheduling
Import the TreeFrogTinkererALL-FMPriceDownload.xml into Task Scheduler in Windows.  It is set to run every month on the 22nd and on May & Nov 5th to get IBonds data a wee bit faster.

See the notes on the IBond page about starting folder ie where to download the file too
