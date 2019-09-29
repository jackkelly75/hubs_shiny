fluidPage(
	titlePanel("MCI modules from AD dataset not preserved in one or both of AD and HC"),

	downloadButton("downloadSienna3Data", "sienna3.csv"),



    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("sienna3", DT::dataTableOutput("mytable3"))
		)
   	)
)
