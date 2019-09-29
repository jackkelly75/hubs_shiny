fluidPage(
	titlePanel("PD modules not preserved in HC"),


	downloadButton("downloadDarkData", "darkseagreen4.csv"),
	downloadButton("downloadNavajoData", "navajowhite2.csv"),
	downloadButton("downloadSalmonData", "salmon.csv"),

    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("darkseagreen4", DT::dataTableOutput("mytable3")),
	        tabPanel("navajowhite2", DT::dataTableOutput("mytable4")),
	        tabPanel("salmon", DT::dataTableOutput("mytable5"))
		)
   	)
)
