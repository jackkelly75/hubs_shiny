fluidPage(
	titlePanel("MCI modules from AD dataset not preserved in one or both of AD and HC"),

	downloadButton("downloadDarkgreyData", "darkgrey.csv"),
	downloadButton("downloadSaddlebrownData", "saddlebrown.csv"),
	downloadButton("downloadSienna3Data", "sienna3.csv"),



    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("darkgrey", DT::dataTableOutput("mytable1")),
	        tabPanel("saddlebrown", DT::dataTableOutput("mytable2")),
	        tabPanel("sienna3", DT::dataTableOutput("mytable3"))
		)
   	)
)