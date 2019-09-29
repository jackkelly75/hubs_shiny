fluidPage(
	titlePanel("HC modules from AD dataset not preserved in one or both of AD and MCI"),
    
	downloadButton("downloadDarkData", "darkolivegreen.csv"),
	downloadButton("downloadRedData", "red.csv"),
	downloadButton("downloadSkyblueData", "skyblue.csv"),
	downloadButton("downloadOrangeData", "darkorange2.csv"),

    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("darkolivegreen", DT::dataTableOutput("mytable1")),
	        tabPanel("red", DT::dataTableOutput("mytable2")),
	        tabPanel("skyblue", DT::dataTableOutput("mytable3")),
	        tabPanel("darkorange2", DT::dataTableOutput("mytable4"))
		)
   	)
)
