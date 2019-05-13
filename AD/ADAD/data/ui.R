fluidPage(
	titlePanel("AD modules from AD dataset not preserved in one or both of MCI and HC"),

	downloadButton("downloadBlueData", "blue.csv"),
	downloadButton("downloadPaleData", "paleturquoise.csv"),

    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("blue", DT::dataTableOutput("mytable1")),
	        tabPanel("paleturquoise", DT::dataTableOutput("mytable2"))
		)
   	)
)