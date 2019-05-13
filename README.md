# Shiny app to display and explore hubs found for AD and PD blood networks

Network analysis was used on AD microarray datasets to find modules not preserved between networks created using AD, MCI and HC networks.

Network analysis was used on PD microarray datasets to find modules not preserved between networks created using PD and HC networks.

Shiny app to show the results of hub analysis of AD and PD blood networks

```
library(shiny)

# Easiest way is to use runGitHub
runGitHub("hubs_shiny", "jackkelly75", subdir = "PD/PDPD/")  #change subdir for table required

####possible sub dir
#"PD/PDPD/"
#"PD/PDHC/"
#"AD/ADAD/"
#"AD/ADHC/"
#"AD/ADMCI/"

```

Or you can clone the git repository, then use ```runApp():```

```
# First clone the repository with git. If you have cloned it into
# ~/hubs_shiny/PD/PDPDshinyapp, first go to that directory, then use runApp().
setwd("~/hubs_shiny/PD/PDPD")
runApp()
```
