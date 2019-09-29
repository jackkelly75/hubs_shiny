fluidPage(
	titlePanel("HC modules not preserved in PD"),

	downloadButton("downloadPurpleData", "purple.csv"),


    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("purple", DT::dataTableOutput("mytable1"))
		)
   	)
)
