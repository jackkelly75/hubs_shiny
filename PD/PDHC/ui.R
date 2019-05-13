fluidPage(
	titlePanel("HC modules not preserved in PD"),

	downloadButton("downloadPurpleData", "purple.csv"),
	downloadButton("downloadBlueData", "blue.csv"),


    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("purple", DT::dataTableOutput("mytable1")),
	        tabPanel("blue", DT::dataTableOutput("mytable2"))
		)
   	)
)